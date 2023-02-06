  <?php
        $TYPE = $_GET["Type"];
        $MinPrice = $_GET["MinPrice"];
        $MaxPrice = $_GET["MaxPrice"];


        if (!empty($Type) && !empty($MinPrice) && !empty($MaxPrice) ) {
          foreach($fetch as $key => $val) { 
                        ?>
                      <div class="card">
                        <div class="card-header">
                          <img src="image/<?php echo $val['IMAGE']; ?>.jpg " alt="<?php echo $val['IMAGE']; ?>" />
                        </div>
                        <div class="card-body">          
                          <span class="tag"><?php echo $val['TYPE']; ?></span>
                          <h4><?php echo $val['TITTLE'];  ?></h4>
                          <h5><?php echo $val['PRICE'];  ?> DH</h5>
                          <p><?php echo $val['DESCRIPTION'];  ?></p>
                          <p class="silver"><?php echo $val['SPACE'];  ?></p>
                          <p class="silver"><?php echo $val['LOCATION'];  ?></p>
                          <p class="silver"><?php echo $val['DATE'];  ?></p>

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
          } else if(isset($_GET["filtrer"])){
            if(!empty($Type) && !empty($MinPrice) && !empty($MaxPrice)){
                $sql = "SELECT * FROM `announce` WHERE `PRICE` >= $MinPrice AND `PRICE` <= $MaxPrice AND `TYPE` LIKE '$TYPE'";
                $result = mysql_query($sql, $conn);
                if (mysql_num_rows($result) > 0) {
                    ?>
                      <div class="card">
                        <div class="card-header">
                          <img src="image/<?php echo $val['IMAGE']; ?>.jpg " alt="<?php echo $val['IMAGE']; ?>" />
                        </div>
                        <div class="card-body">          
                          <span class="tag"><?php echo $val['TYPE']; ?></span>
                          <h4><?php echo $val['TITTLE'];  ?></h4>
                          <h5><?php echo $val['PRICE'];  ?> DH</h5>
                          <p><?php echo $val['DESCRIPTION'];  ?></p>
                          <p class="silver"><?php echo $val['SPACE'];  ?></p>
                          <p class="silver"><?php echo $val['LOCATION'];  ?></p>
                          <p class="silver"><?php echo $val['DATE'];  ?></p>
                          <form action="index.php" method="post">
                            <div class="actions">
                              <a  href="info.php?id=<?php echo $val['ID'];?>"><i class="fa-solid fa-circle-info"></i></a>
                              <a  href="Product.php?id=<?php echo $val['ID'].'&action=update';?>" id="edit" name="edit"><i class="fa-solid fa-pen-to-square"></i></a>
                              <a  onclick="Delete(<?php echo $val['ID'];?>)" id="del"><i class="fa-solid fa-trash"></i></a>
                            </div>
                          </form>
                        </div>
                      </div>
                    <?php }}} ?>