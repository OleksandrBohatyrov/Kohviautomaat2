# Kohviautomaat

kohviautomaadi simulatsioon c#-is

## ${\color{red}Kirjeldus}$
 - ### Projektis saate:
   1. + Registreeru ja logi sisse kasutajana.
   2. __Jookide ostmiseks__
 - #### Administraatorile
   * ~~Pakendite lisamine~~
   * **Jookide lisamine** ja <sub>muutmine</sub> 

| Osa           | Õigused       
| ------------- |:-------------:
| Admin         | Pakettide lisamine ja lahtipakkimine
| Kasutaja      | Toote ostmine      
  


### Sõltuvused

* Veebibrauser (Google Chrome, Firefox)
* Wi-Fi

### Veebisait

![pilt](https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/d993079f-9173-4bb1-8de4-0ad7cea1fb52)

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

* Vaata [commit change]() või Vaata [release history]()


## License

This project is licensed under the [Oleksandr Bohatyrov] License - see the LICENSE.md file for details
