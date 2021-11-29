<!DOCTYPE html>
<html lang="fr">
<?php
    
    session_start();   // Ouverture de la session
    include("session.php"); // Appel de la page de session

    if($_SESSION["Connected"] == true){
        ?>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Accueil</title>
            <link rel="icon" type="image/png" href="src/img/icon.png">
            <link rel='stylesheet' type='text/css' href='src/css/index.css'>
            <link rel='stylesheet' type='text/css' href='src/css/accueil.css'>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        </head>
        <body>
            <?php
                include("menu.php");
            ?>
            <div class="back">
                <h2>Accueil</h2>
                <div class="text">
                    <p>
                        Le but du projet est de réaliser une partie du site internet de la station de géolocalisation M56i. 
                        Il faut stocker les données récupérées sur le GPS en base de données. Les données seront affichées 
                        sur une page dédiée et le tracé sera sur une autre page de l’application.
                    </p>
                </div>
                <div class="divgif">
                    <img src="src/img/gif.gif" class="gif">
                </div>
            </div>
            <audio src="src/audio/matrix_OST.mp4" autoplay loop></audio>
        </body> 
    <?php
    }
?>            
</html>