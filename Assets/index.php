<?php
require 'connect.php';

$query = $conn->query("SELECT * FROM announce");
$fetch = $query->fetchAll(PDO::FETCH_ASSOC);

if(isset($_POST['filtrer'])){

  $TYPE = $_POST["Type"];
  $MinPrice = $_POST["MinPrice"];
  $MaxPrice = $_POST["MaxPrice"];
  $sql = "SELECT * FROM `announce` WHERE `PRICE` >= $MinPrice AND `PRICE` <= $MaxPrice AND `TYPE` LIKE '$TYPE'";
  $result = $conn->query($sql);

  $FilterResult = $result->fetchAll(PDO::FETCH_ASSOC);


}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <script src="https://kit.fontawesome.com/c7a60e43cd.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet" />
    <title>Home</title>
  </head>
  <body>
    <nav>
      <div>
        <a href="index.php"><img src="image/Vector.png" alt="Home Logo" /></a>
        <p>Our Home</p>
      </div>
      <div id="nav">
      <a href="Product.php<?php echo '?action=Add';?>"  id="announce">ADD NEW ANNOUNCE </a>
      </div>
      <div id="profile">
        <a href="#"><img src="./image/profile.png" alt="profile logo" /></a>
      </div>
    </nav>
    <header>
      <h1>Your Dream <br />house is here.</h1>
    </header>

    <section>
      <div id="listings">
        <h2>Listings</h2>
        <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post">
          <div id="filter">
            <span class="tit">Type</span>
            <div>
              <select name="Type">
                <option value="Sale">Sale</option>
                <option value="Rent">Rent</option>
              </select>
            </div>
              <div id="mar">
                <span class="tit">Price</span>
                <div class="up">
                  <input type="number" name="MinPrice" min="0" placeholder="Min Price ..." />
                </div>
                <div class="up">
                  <input type="number" name="MaxPrice" min="0"  placeholder="Max Price ..." />
                </div>
                <div>
                  <input type="submit" value="filtrer" name="filtrer" id="filtrer"/>
                </div>
              </div>
        </div>
        </form>
      </div>
      <div class="cards">
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "GET") {
          foreach($fetch as $key => $val) { 
                        ?>
                      <div class="card">
                        <div class="card-header">
                          <img src="image/<?php echo $val['IMAGE']; ?>.jpg " alt="<?php echo $val['IMAGE']; ?>" />
                        </div>
                        <div class="card-body" class="actions">          
                          <span class="tag"><?php echo $val['TYPE']; ?></span>
                          <h4><?php echo $val['TITTLE'];  ?></h4>
                          <hr>
                          <h5><?php echo $val['PRICE'];  ?> DH</h5>
                          <form action="index.php" method="post">
                            <div class="actions">
                              <a  href="info.php?id=<?php echo $val['ID'];?>"><i class="fa-solid fa-circle-info"></i></a>
                              <a  href="Product.php?id=<?php echo $val['ID'].'&action=update';?>" id="edit" name="edit"><i class="fa-solid fa-pen-to-square"></i></a>
                              <a  onclick="Delete(<?php echo $val['ID'];?>)" id="del"><i class="fa-solid fa-trash"></i></a>
                            </div>
                          </form>
                        </div>
                      </div>
                      <?php 
            }
          } else if ($_SERVER["REQUEST_METHOD"] == "POST") {
              foreach($FilterResult as $key => $val) { 
                      ?>
                      <div class="card">
                        <div class="card-header">
                          <img src="image/<?php echo $val['IMAGE']; ?>.jpg" alt="<?php echo $val['IMAGE']; ?>" />
                        </div>
                        <div class="card-body">
                          <span class="tag"><?php echo $val['TYPE']; ?></span>
                          <h4><?php echo $val['TITTLE'];  ?></h4>
                          <hr>
                          <h5> From <?php echo $val['PRICE'];  ?> DH</h5>
                          <form action="index.php" method="post">
                            <div class="actions">
                              <a href="info.php?id=<?php echo $val['ID'];?>"><i class="fa-solid fa-circle-info"></i></a>
                              <a href="Product.php?id=<?php echo $val['ID'].'&action=update';?>" id="edit" name="edit"><i class="fa-solid fa-pen-to-square"></i></a>
                              <a onclick="Delete(<?php echo $val['ID'];?>)" id="del"><i class="fa-solid fa-trash"></i></a>
                            </div>
                          </form>
                        </div>
                      </div>
                      <?php
                    }
                  }
              ?>
      </div>
    </section>
    <!-- =========================================== modal ================================================= -->
    <div id="product_info" class="product_info" style="display: none;">
        <div class="content">
          <span onclick="document.getElementById('product_info').style.display='none'" class='close' title="Close">&#10005;</span>
          <h2>Message</h2>
          <hr>
          <div id="message">
            <h3>Are you sure you want to delete ? </h3>
          </div>
          <hr>
          <div class="btns">
          <a  onclick="document.getElementById('product_info').style.display='none'" class="cancel">CANCEL</a>
          <a  href="" class="cancel" id="delete">DELETE</a>
          </div>
      </div>
    </div>
    <footer>
      <div>
        <div>
          <img src="image/Vec.png" alt="copyright" />
          <p>All Rights Are Reserved</p>
        </div>
      </div>
    </footer>
    <script>
      function Delete(ID) {
        document.getElementById("delete").href = "delete.php?id=" + ID;
        document.getElementById("delete").setAttribute("href", "delete.php?id=" + ID);
        document.getElementById('product_info').style.display='block';
      }
    </script>
  </body>
</html>