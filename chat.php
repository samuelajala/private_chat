<?php  session_start();
  if (!isset($_SESSION['username'])) {
    header("Location:index.php");
  }

  if(isset($_POST['startChat'])) {
    //Do code
    $con = mysqli_connect("localhost","root","","chat_system");
    $toUser = htmlentities($_POST['toUser']);

    $q = "SELECT * FROM login WHERE username = '".$toUser."'";

    $isUser =  mysqli_fetch_assoc(mysqli_query($con,$q));

    if (!$isUser) {
      //Is not user
      echo "sorry, we can't find that user";
    }else {
      //Is user
      $q = "CREATE TABLE ".$_SESSION['username']."_".$toUser." (id int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT, message VARCHAR(1000), userFrom VARCHAR(20))";
      mysqli_query($con,$q);

      $message = htmlentities($_POST['message']);

      $q = "INSERT INTO ".$_SESSION['username']."_".$toUser." (message, userFrom) VALUES ('".$message."','".$_SESSION['username']."')";
      mysqli_query($con,$q);

      $q = "INSERT INTO chats (user1,user2) VALUES ('".$_SESSION['username']."','".$toUser."')";
      mysqli_query($con,$q);
    }
    //closing our connection so that it will not conflict with the new one we want to use below
    mysqli_close($con);
  }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Chat Away</title>
  </head>
  <body>
    <form class="" action="" method="post">
      <input type="text" name="toUser" Placeholder="To" required><br>
      <textarea name="message" rows="10" cols="100" required  Placeholder="Message..."></textarea><br>
      <input type="submit" name="startChat" value="Begin Chat">
    </form>
    <?php
      $con = mysqli_connect("localhost","root","","chat_system");
        $q = "SELECT * FROM chats WHERE user1 = '".$_SESSION['username']."' OR user2 = '".$_SESSION['username']."'";
        $query = mysqli_query($con,$q);

        while ($row = mysqli_fetch_assoc($query)) {
          echo "<a href='indChat.php?user1=".$row['user1']."&user2=".$row['user2']."'>Chat between : ".$row['user1']." and ".$row['user2']."</a><br>";
        }

      mysqli_close($con);
    ?>
  </body>
</html>
