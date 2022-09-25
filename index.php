<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salty</title>
	<link rel="stylesheet" href="index.css">
    <link rel="icon" type="image/x-icon" href="logo-favicon.png">
</head>
<body>

    <header class="header">
            
	
		<div class="main-nav">
            <img class="logo" src="logo0.png" alt="salty">
            <!-- <a>Salty</a> -->
			<a class="nav-item" href="./?p=rec">Receptek</a>
			<a class="nav-item" href="./?p=recfel">Receptfeltöltés</a>
			<a class="nav-item" href="./?p=huto">Hűtőm</a>
			<a class="nav-item" href="./?p=kedv">Kedvencek</a>
            <div class="login">
            <?php

            //session_destroy();
            //$_SESSION['uid'] = 1;

            if (isset($_COOKIE['uid']) && !isset($_SESSION['uid'])) {
                session_start();
                $_SESSION['uid'] = $_COOKIE['uid'];
                
            }
            if (isset($_SESSION['uid'])) {
                    
                if (isset($_GET['bel'])) {
                    if ($_GET['bel'] == "successfull") {
                        echo '<script> alert ("Sikeres belépés")</script>';
                    }
                }
                echo '<a class="welcome-text">Szia '.$_SESSION['uid'].'!</a>';
                echo '<a class="nav-item" href="./?p=kij">Kijelentkezés</a>';
            } else {
                echo <<<BELEPES
                    <a class="nav-item" href="./?p=bel">Belépés</a>
                    <a class="nav-item" href="./?p=reg">Regisztráció</a>
                BELEPES;
            }
      
            


            ?>
            </div>
			

		</div>
    </header>
    <div id="tartalom">
        <?php
        if (isset($_GET['p']))  $p=$_GET['p'];
        else                    $p="";

        if($p=="rec")  print"<h2>Receptek</h2>";        else
        if($p=="recfel") include("recfel.php");         else
        if($p=="huto")   print"<h2>Hűtőm</h2>";         else
        if($p=="kedv")   include("kedvenc.php");        else   
        if($p=="bel")  include("bejel.php");            else
        if($p=="reg")   include("regisztracio.php");    else
        if($p=="kij")   include("kijelentkezes.php");    else
                        include("404.php");

        ?>
        <!-- <iframe name="kisablak"></iframe> -->
    </div>













</body>
</html>