<?php

    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $username = stripcslashes($username);
    $password = stripcslashes($password);

    if (isset($_POST['bejSubmit'])) {
        $conn = new mysqli('localhost','root','','vizsga');
        if($conn->connect_error){
            echo "$conn->connect_error";
            die("Connection Failed : ". $conn->connect_error);
        }
        $stmt = $conn->prepare("select * from user where unev = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();


        $result = $stmt -> get_result();
        while ($row = $result -> fetch_assoc()) {
            $userPwdHashed = $row['jelszo'];
        }
        $stmt -> close();

         //Jelszó ellenőrzése
        $checkPassword = password_verify($password, $userPwdHashed);
        if ($checkPassword == 0) {
           //Hiba
          header('location: ../vizsga/index.php?p=bel&error=wrongPassword&uID='. $username);
          exit();
        } else {
            session_start();
            $_SESSION['uid'] = $_POST['username'];
            setcookie("uid", $_SESSION['uid'], time() + (86400 * 10), "/");
            header('location: ../vizsga/index.php?p=rec&bel=successfull');
            
        }
    }






