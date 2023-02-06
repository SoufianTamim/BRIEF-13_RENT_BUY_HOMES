<?php
include "connect.php";

if (isset($_GET["submitIt"])) {
   
   $ID =$_GET["id"];
   $TITTLE =$_GET["tittle"];
   $PRICE =$_GET["price"];
   $SPACE =$_GET["space"];
   $DESCRIPTION =$_GET["description"];
   $LOCATION =$_GET["location"];
   $DATE =$_GET["date"];
   $TYPE =$_GET["type"];
   $IMAGE =$_GET["image"];

   $sql = "UPDATE `announce` 
   SET `TITTLE`='$TITTLE', `PRICE`='$PRICE', `SPACE`='$SPACE', `DESCRIPTION`='$DESCRIPTION', `LOCATION`='$LOCATION', `DATE`='$DATE', `TYPE`='$TYPE', `IMAGE`='$IMAGE'
   WHERE `ID`='$ID'";

   $Result = $conn->query($sql)->execute();
   
   header("location:index.php");
}



http://localhost/BRIEF-13_RENT_BUY_HOMES/Assets/update.php?id=3&tittle=Beautiful+Wooden+Houses+with+Lawns&price=60000&space=250&description=The+apartment+is+close+to+the+beach+it+has+a+very+beautiful+view+and+a+nice+location.&location=london%2C+UK&date=2023-02-09&type=Rent&image=2