<?php

include "connect.php"; // ====== connect to the database

   $TITTLE =$_GET["tittle"];
   $PRICE =$_GET["price"];
   $SPACE =$_GET["space"];
   $DESCRIPTION =$_GET["description"];
   $LOCATION =$_GET["location"];
   $DATE =$_GET["date"];
   $TYPE =$_GET["type"];
   $IMAGE =$_GET["image"];
   
//  ===== if the this file heve been called the code above will work
if ( true ){

   // send a request to the db and insert into the values of inputs 
   $sql = "INSERT INTO `announce` 
   (`TITTLE`, `PRICE`, `SPACE`, `DESCRIPTION`, `LOCATION`, `DATE`, `TYPE`, `IMAGE`)
   VALUES 
   ('$TITTLE' , '$PRICE', '$SPACE', '$DESCRIPTION', '$LOCATION', '$DATE', '$TYPE', '$IMAGE')";


   //retrieve a single row from the result set of the query and store it in the variable "$Result"
   $Result = $conn->query($sql)->fetch();
   
   //redirect the browser to a new URL, which is "index.php"
   header("location:index.php");
}

