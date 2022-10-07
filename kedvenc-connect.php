<?php

    $conn = new mysqli_connect('localhost', 'root', '', 'vizsga');

    $sql = "SELECT * FROM kedvencek";
    $result = mysqli_query($conn, $sql);
    $posts = mysqli_fetch_assoc($result);





    if(isset($_GET["unev"])) {
        $unev = $_GET("unev");
        $rnev = $_GET("rnev");

        $select = $connect->prepare("SELECT * FROM kedvencek WHERE unev = ?")
        $select -> execute([$unev]);
        $number = $select->rowCount();
        if($number>0) {
            $delete = $connect->("DELETE FROM kedvencek WHERE rnev = ?");
            $delete -> execute([$rnev]);
        } else {
            $insert = $connect->prepare("INSERT INTO kedvencek(unev, rnev)VALUES (?, ?) ");
            $insert -> execute([$unev,$rnev]);
        }
    }
    




?>