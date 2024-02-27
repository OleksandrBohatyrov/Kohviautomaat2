# Kohviautomaat

kohviautomaadi simulatsioon c#-is

## Kirjeldus
### Projektis saate:
   * Registreeru ja logi sisse kasutajana
   * Jookide ostmiseks
#### Administraatorile
   * Pakendite lisamine
   * Jookide lisamine ja muutmine 


### Sõltuvused

* Veebibrauser (Google Chrome, Firefox)
* Wi-Fi

### Veebisait

* [Kohviautomaat](https://oleksandrbohatyrov22.thkit.ee/JSleht/Content/kohv/haldusleht.php)

### Code


Siin ma võtan Topsejuua väärtuse.
```
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
```


## Autorid

ex. Oleksandr Bohatyrov

## Versiooni ajalugu

* See [commit change]() or See [release history]()


## License

This project is licensed under the [Oleksandr Bohatyrov] License - see the LICENSE.md file for details
