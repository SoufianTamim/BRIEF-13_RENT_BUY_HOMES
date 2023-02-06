<?php
include "connect.php";

   $TITTLE =$_GET["tittle"];
   $PRICE =$_GET["price"];
   $SPACE =$_GET["space"];
   $DESCRIPTION =$_GET["description"];
   $LOCATION =$_GET["location"];
   $DATE =$_GET["date"];
   $TYPE =$_GET["type"];
   $IMAGE =$_GET["image"];

if ( true ){
   $sql = "INSERT INTO `announce` 
   (`TITTLE`, `PRICE`, `SPACE`, `DESCRIPTION`, `LOCATION`, `DATE`, `TYPE`, `IMAGE`)
   VALUES 
   ('$TITTLE' , '$PRICE', '$SPACE', '$DESCRIPTION', '$LOCATION', '$DATE', '$TYPE', '$IMAGE')";

   $Result = $conn->query($sql)->fetch();
   
   header("location:index.php");
}

