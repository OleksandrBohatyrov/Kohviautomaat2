# Kohviautomaat

kohviautomaadi simulatsioon c#-is

## ${\color{red}Kirjeldus}$
 - ### Projekti saab:
   1. + Registreerida ja sisse logida kasutajana ja administratorina.
   2. __Oosta joogid__
 - #### Administraatorile
   * ~~Pakendit lisamda~~
   * **Jookide lisamine** ja <sub>muutmine</sub> 

## Valmistatud koos:
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)

| Osa           | Õigused       
| ------------- |:-------------:
| Admin         | Pakettide lisamine ja lahtipakkimine
| Kasutaja      | Toote ostmine      
  


### Sõltuvused

* Veebibrauser (Google Chrome, Firefox)
* Wi-Fi

### ${\color{green}Veebisait}$

<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/d993079f-9173-4bb1-8de4-0ad7cea1fb52" alt="pilt" style="width: 50%; height: auto;">


### ${\color{orange}Kasutaja leht}$
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/b3d263bd-5438-4f5d-8e18-36c7e6889d4a" alt="kasutaja" style="width: 50%; height: auto;">


### ${\color{pink}Admin leht}$
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/0020b612-20d2-4fb6-ae47-f143da5747a1" alt="admin" style="width: 50%; height: auto;">



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
