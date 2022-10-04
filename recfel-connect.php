<?php
    $receptname = $_POST['receptName'];
    $osszetevok = $_POST['osszetevok'];
    $elkeszites = $_POST['elkeszites'];

    if (isset($_POST['recSubmit'])) { 
        $conn = new mysqli('localhost', 'root', '', 'vizsga');
        if($conn->connect_error){
            echo "$conn->connect_error";
            die("Connection Failed : ". $conn->connect_error);
        }
        if (strlen($receptName) < 4) {
            header("location: ../vizsga/index.php?p=recfel&error=receptName-min-4");
            
            if (strlen($osszetevok) < 15) {
            header("location: ../vizsga/index.php?p=recfel&error=hozzavalok-min-15");

                if (strlen($elkeszites) < 15) {
                header("location: ../vizsga/index.php?p=recfel&error=elkeszites-min-15");
                exit();
                }
            }
        }
        
        


        $stmt = $conn->prepare("insert into receptek(rnev, osszetevok, elkeszites) values(?, ?, ?)");
        $stmt->bind_param("sss", $receptname, $osszetevok, $elkeszites);

        if (!$execval = $stmt->execute()) {
            echo "error";
            exit();
        } else {
            $stmt->close();
            $conn->close();
            header("location: index.php?p=rec&recfel=successfull");
            exit();
        }
    }
    
?>