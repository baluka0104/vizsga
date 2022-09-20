<?php
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
	$hashedpwd = md5($password);
    $birthDate = $_POST['birthYear'].".".$_POST['birthMonth'].".".$_POST['birthDay'];
	

    // Database connection
    if (isset($_POST['regSubmit'])) {
        $conn = new mysqli('localhost','root','','vizsga');
        if($conn->connect_error){
            echo "$conn->connect_error";
            die("Connection Failed : ". $conn->connect_error);
        }
        $stmt = $conn->prepare("insert into user(email, unev, jelszo, szuldatum) values(?, ?, ?, ?)");
        $stmt->bind_param("ssss", $email, $username, $hashedpwd, $birthDate);
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
?>