<?php 

require "connect.php";

if (isset($_GET['id']) ){

    
    $ID = $_GET['id'];
    

    $Delete = "DELETE FROM announce WHERE `announce`.`ID` = $ID" ;
    
    $Result = $conn->query($Delete)->execute();

    if (!$Result) {
        echo "Error: " . $Delete . "<br>" . $conn->error;
    }
    

    header("location:index.php");
} 