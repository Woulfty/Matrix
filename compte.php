<!DOCTYPE html>
<html lang="fr">
<?php
    
    session_start();   // Ouverture de la session
    include("session.php"); // Appel de la page de session 

    $id = $user->getID();

    if(isset($_POST['save'])){
        $user->updateUser($id);
        header("Refresh:0");
    }
    if(isset($_POST['suppr_confirm'])){
        $user->deleteUser($id);
        $_SESSION["Connected"] = false;
        header('location: index.php');
    }

    if($_SESSION["Connected"] == true){
        ?>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Compte</title>
            <link rel="icon" type="image/png" href="src/img/icon.png">
            <link rel='stylesheet' type='text/css' href='src/css/index.css'>
            <link rel='stylesheet' type='text/css' href='src/css/compte.css'>
            <link rel='stylesheet' type='text/css' href='src/css/formulaire.css'>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        </head>
        <body>
            <?php
                include("menu.php");
            ?>
            <div class="back">
                <h2>Compte</h2>
                <div class="divegg">
                    <a href="https://www.youtube.com/watch?v=Tj63xbpKnqo"><img src="src/img/egg.jfif" class="egg"></a>
                </div>
                <div class="form">
                    <h4>Modifier le compte</h4>
                    <?php $user->formUser($id); ?>
                </div>
            </div>
            <audio src="src/audio/matrix_OST.mp4" autoplay loop></audio>
            <script type="text/javascript" src="src/js/edit.js"></script>
        </body> 
    <?php
    }
?>            
</html>