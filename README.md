# Kohviautomaat

kohviautomaadi simulatsioon c#-is

## ${\color{red}Kirjeldus}$
 - ### Projektis saab:
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

<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/d993079f-9173-4bb1-8de4-0ad7cea1fb52" alt="pilt" style="width: 200px; height: auto;">


### Kasutaja leht
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/b3d263bd-5438-4f5d-8e18-36c7e6889d4a" alt="kasutaja" style="width: 200px; height: auto;">


### Admin leht
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/0020b612-20d2-4fb6-ae47-f143da5747a1" alt="admin" style="width: 200px; height: auto;">



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
