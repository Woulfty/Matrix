<?php
        
    session_start();   // ouverture de la session
    
    include "src/class/user.php";
    /* Appel de la Base De Donnée (BDD) */
    /*// BDD locale
    $host = "localhost";
    $dbname = "tp-mise_en_route";
    $login = "root";
    $mdp = "";*/

    // BDD VM
    $host = "192.168.64.113";
    $dbname = "tp-mise_en_route";
    $login = "touser";
    $mdp = "tppass";
    
    $bdd = new PDO('mysql:host='.$host.'; dbname='.$dbname.'; charset=utf8', $login, $mdp);

    $user = new user($bdd);

    $user->inscription();

?>