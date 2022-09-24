<?php

    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashedpwd = md5($password);
    
    $username = stripcslashes($username);
    $password = stripcslashes($password);

    if (isset($_POST['bejSubmit'])) {
        $conn = new mysqli('localhost','root','','vizsga');
        if($conn->connect_error){
            echo "$conn->connect_error";
            die("Connection Failed : ". $conn->connect_error);
        }
        $stmt = $conn->prepare("select * from user where unev = ? and jelszo = ?");
        $stmt->bind_param("ss", $username, $hashedpwd);







        

        if (!$execval = $stmt->execute()) {
            echo "error";
            exit();
        } else {
            $stmt->close();
            $conn->close();
			header("location: index.php?p=bel&reg=successfull");
			exit();
        }
    }









    // User táblából veszi az adatokat az adatbázisból
    $result = mysql_query("select * from user where unev = '$username' and jelszo = '$password'")
        or die("Failed to query databate ".mysql_error());

    $row = mysql_fetch_array($result);
    if ($row['unev'] == $username && $row['jelszo'] == $password ){
        echo "Sikeres bejelentkezés!!! Welcome..." .$row['unev'];
    } else {
        echo "Failed to login!";
    }
?>