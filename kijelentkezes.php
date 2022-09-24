<?php
    setcookie("uid", $_SESSION['uid'], time() - (86400 * 10), "/");
    session_destroy();
    header('location: ../vizsga/index.php?p=bel');
    
?>