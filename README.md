## Sisukord
1. [Kohviautomaat](https://github.com/OleksandrBohatyrov/Kohviautomaat2/blob/main/README.md#kohviautomaat)
  2. [Kirjeldus](https://github.com/OleksandrBohatyrov/Kohviautomaat2?tab=readme-ov-file#colorredkirjeldus)
  3. [Valmistatud koos](https://github.com/OleksandrBohatyrov/Kohviautomaat2?tab=readme-ov-file#valmistatud-koos)
  4. [Veebisait](https://github.com/OleksandrBohatyrov/Kohviautomaat2?tab=readme-ov-file#colorgreenveebisait)
  5. [Koodinäidised](https://github.com/OleksandrBohatyrov/Kohviautomaat2?tab=readme-ov-file#koodi-n%C3%A4ididsed)

# Kohviautomaat


Automaat saab hakkama mitme joogiga (kohv, tee, kakao). Lehel näidatakse vaid neid jooke, millel on vähemasti üks tops juua. Joomise tulemusena vähendatakse vastava joogi olemasolevate topside loendurit. Halduslehel saab joodavate topside arvu kogust suurendada täitepaki jagu.

## ${\color{red}Kirjeldus}$
 - ### Projekti saab:
   1. Registreerida ja sisse logida kasutajana ja administratorina.
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
* Andmebaas



### ${\color{green}Veebisait}$
  
* [Link Kohviautomaat veebilehele](https://oleksandrbohatyrov22.thkit.ee/JSleht/Content/kohv/haldusleht.php)

**Külalise leht**
<br>
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/1de735e6-c326-4835-a511-afae3660b5f9" alt="pilt" style="width: 50%; height: auto;">


### ${\color{orange}Kasutaja leht}$
**Avaleht, kui kasutaja on sisse logitud**
<br>
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/b3d263bd-5438-4f5d-8e18-36c7e6889d4a" alt="kasutaja" style="width: 50%; height: auto;">


### ${\color{pink}Admin leht}$
**Avaleht, kui admin on sissu logitud**
<br>
<img src="https://github.com/OleksandrBohatyrov/Kohviautomaat2/assets/120181397/0020b612-20d2-4fb6-ae47-f143da5747a1" alt="admin" style="width: 50%; height: auto;">





### Koodi näididsed 


Funktsioon mis tagastab  topsejuuada väärtuse andmebaaside
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
