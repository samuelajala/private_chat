<?php

  session_start();

if (isset($_POST['submit'])) {

  //htmlentities valididates whosoever is in the bracket
    $user = htmlentities($_POST['user']);
    $pass = htmlentities($_POST['pass']);

    $con = mysqli_connect("localhost","root","","chat_system");

    $query = "SELECT * FROM login WHERE username = '".$user."'";
    $queryResult = mysqli_fetch_assoc(mysqli_query($con,$query));

    if($pass==$queryResult['password']){
      $_SESSION['username'] = $user;
      header("Location:chat.php");
}
}
  echo "Wrong username or password. Click <a href='index.php'> here </a> to return";
?>
