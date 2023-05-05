<?php

session_start();

if (isset($_POST['submit'])) {
  $user1 = htmlentities($_GET['user1']);
  $user2 = htmlentities($_GET['user2']);

  $message = htmlentities($_POST['message']);
  $con = mysqli_connect("localhost","root","","chat_system");
  $q = mysqli_query($con,"INSERT INTO ".$user1."_".$user2." (message,userFrom) VALUES ('".$message."','".$_SESSION['username']."')");
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <form class="" action="" method="post">
      <textarea name="message" rows="5" cols="50" placeholder="Message..."></textarea>
      <input type="submit" name="submit" value="Send">
    </form>

    <a href="chat.php">Back</a><br>

    <?php
      $user1 = htmlentities($_GET['user1']);
      $user2 = htmlentities($_GET['user2']);
      $con = mysqli_connect("localhost","root","","chat_system");
      $q = mysqli_query($con,"SELECT * FROM ".$user1."_".$user2." ORDER BY id DESC");

      while ($row = mysqli_fetch_assoc($q)) {
        echo "From : ".$row['userFrom']."<br>";
        echo "Message : ".$row['message']."<br><br>";

      }

    ?>
  </body>
</html>
