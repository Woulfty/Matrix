<?php
    session_start();
    include "fonction.php";
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>
</head>
<body>
    <?php
        include "menu.php"
    ?>
        <form action="" method="post">
            <p>
                <?php
                    //sélection du nombre d'utilisateur
                    $nb = $MaBase->query("SELECT COUNT(*) FROM user");
                    $gens = $nb->fetch();

                    echo '<h1>'.$gens['COUNT(*)'].' membres </h1>';
                ?>
            </p>

            <h2>
                <u>
                    <p>Connexion :</p>
                </u>
            </h2>

            <input type="text" placeholder="Entrez votre pseudo" name="nom" required>
            <input type="password" placeholder="Entrez votre mot de passe" name="MDP" required>

            <h2>
                <input type="submit" id='submit' name="submit" value="Connection">
            </h2>

            <u>
                <h2>
                    <p>Pas de compte ?<p>
                    <a href="inscription.php">Crée en un maintenant</a>
                </h2>
            </u>
            <?php
                if(isset($_POST['submit'])){
                    //selection des users 
                    $Result = $MaBase->query("SELECT * FROM `user` WHERE `nom`='".$_POST['nom']."' AND `MDP` = '".$_POST['MDP']."'");
                    if($Result->rowCount()>0){
                        header("location: index.php");
                        $tab = $Result->fetch();
                        //si il existe et que le mot de passe correspond -> connection
                        $_SESSION["Logged"] = true;
                        $_SESSION["idUser"] = $tab['id'];
                        $_SESSION["admin"] = $tab['admin'];
                        //réponse a la connection
                        return true;

                    }else{
                        //sinon affiche un msg d'erreur
                        echo `<h3>Le Pseudo ou le mot de passe est incorrect...</h3>`;
                    }
                }
            ?>
        </form>
</body>
</html>