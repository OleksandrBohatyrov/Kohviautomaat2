<?php
session_start();

require_once('conf2.php');
function getCurrentTopsejuua($id)
{
    global $yhendus;
    $kask = $yhendus->prepare("SELECT topsejuua FROM kohviautomaat WHERE id = ?");
    $kask->bind_param("i", $id);
    $kask->execute();
    $kask->bind_result($currentTopsejuua);
    $kask->fetch();
    $kask->close();

    return $currentTopsejuua;
}

if (isset($_REQUEST["kohv"])) {
    global $yhendus;
    $id = $_REQUEST["kohv"];

    // Fetch the current value of topsejuua
    $currentTopsejuua = getCurrentTopsejuua($id);

    // Check if the subtraction would result in a negative value
    if ($currentTopsejuua >= 0 && $currentTopsejuua <= 50) {
        $kask = $yhendus->prepare("UPDATE kohviautomaat SET topsejuua = topsejuua + 1 WHERE id=?");
        $kask->bind_param("i", $id);
        $kask->execute();
    } else {
        echo "Punkte ei saa vähendada, kuna topsejuua on juba 0 või negatiivne.";
    }

    header("Location: $_SERVER[PHP_SELF]");
}
//punktide nulliks
if(isset($_REQUEST["punktid0"])){
    global$yhendus;
    $kask=$yhendus->prepare("UPDATE tantsud SET punktid=0 WHERE id=?");
    $kask->bind_param("i", $_REQUEST["punktid0"]);
    $kask->execute();
    header("Location: $_SERVER[PHP_SELF]");
    $yhendus->close();
    exit();
}

if(isset($_REQUEST["kustuta"])){
    global $yhendus;
    $kask = $yhendus->prepare("DELETE FROM kohviautomaat WHERE id=?");
    $kask->bind_param("i", $_REQUEST["kustuta"]);
    $kask->execute();
    header("Location: $_SERVER[PHP_SELF]");
}

function lisaJook($jooginimi, $topsepakis, $topsejuua)
{
    global $yhendus;
    $kask = $yhendus->prepare("INSERT INTO kohviautomaat(joohinimi, topsepakis, topsejuua) VALUES (?, ?, ?)");
    $kask->bind_param("ssi", $jooginimi, $topsepakis, $topsejuua);
    $kask->execute();
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["jooginimi"], $_POST["topsepakis"], $_POST["topsejuua"])) {
    $jooginimi = $_POST["jooginimi"];
    $topsepakis = $_POST["topsepakis"];
    $topsejuua = $_POST["topsejuua"];

    // Add a new drink
    lisaJook($jooginimi, $topsepakis, $topsejuua);

    // Redirect to avoid form resubmission on page refresh
    header("Location: $_SERVER[PHP_SELF]");
    exit();
}


?>



<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Kohviautomaat</title>
    <script>
        function avaModalLog() {
            document.getElementById("modal_log").style.display = "flex";
        }

        function suleModalLog() {
            document.getElementById("modal_log").style.display = "none";
        }

        window.onclick = function (event) {
            var modalLog = document.getElementById("modal_log");
            if (event.target == modalLog) {
                suleModalLog();
            }
        }
    </script>
</head>
<div class="container">
<header>
    <?php
    require ('nav.php');
    if(isset($_SESSION['kasutaja'])){
    } else {
        ?>
        <div class="open">
            <a href="#modal_log" onclick="avaModalLog()">Logi sisse</a>
        </div>
        <?php
    }
    ?>

</header>
<body>

<div id="modal_log">
        <div class="modal__window">
            <a class="modal__close" href="#">X</a>
            <?php
            require 'login.php';
            ?>
        </div>
    </div>
<h1>Tantsud tähtedega</h1>
<h2>Administreerimis leht</h2>
<table>
    <tr>
        <th>
            Joohinimi
        </th>
        <th>
            Topsepakis
        </th>
        <th>Punktid</th>
        <th>Avalik</th>
        <th>Kustuta</th>
    </tr>
    <?php
    global $yhendus;
    $kask = $yhendus->prepare("SELECT id, joohinimi, topsepakis, topsejuua FROM kohviautomaat");
    $kask->bind_result($id, $joohinimi, $topsepakis, $topsejuua);
    $kask->execute();

    while ($kask->fetch()) {
        echo "<tr>";
        $joohinimi = htmlspecialchars($joohinimi);
        echo "<td>" . $joohinimi . "</td>";
        echo "<td>" . $topsepakis . "</td>";
        echo "<td>" . $topsejuua . "</td>";
        if (!isAdmin()) {
            echo "<td><a href='?kohv_=$id'>Lisa -1 punkt</a></td>";
        } else {
            echo "<td><a href='?kohv=$id'>Lisa +1 punkt</a></td>";
        }
        echo "<td><a href='?kustuta=$id'>Kustuta</a></td>";
    }
    ?>

        <div style="background-color: darkcyan">
        <form action="" method="post">
            <label for="jooginimi">Lisa uus jooginimi</label>
            <input type="text" name="jooginimi" id="jooginimi" style="width: 15%">
            <label for="jooginimi">Lisa topsepakis</label>
            <input type="number" name="topsepakis" id="topsepakis" style="width: 15%">
            <label for="jooginimi">Lisa topsejuua</label>
            <input type="number" name="topsejuua" id="topsejuua" style="width: 15%">
            <br>
            <input type="submit" value="Lisa jooginimi" style="width: 15%">
        </form>
    </div>

</table>

</div>
</body>
</html>
