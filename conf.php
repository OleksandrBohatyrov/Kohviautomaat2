<?php
$kasutaja = 'root';
$serverinimi='localhost';
$parool='';
$andmebaas='d123169_andmebaas';
$yhendus=new mysqli($serverinimi, $kasutaja, $parool, $andmebaas);
$yhendus->set_charset('UTF8');