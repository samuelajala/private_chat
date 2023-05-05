<?php session_start(); ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>chat_system</title>
  </head>
  <body>
    <form class="" action="login.php" method="post">
      <input type="text" name="user" placeholder="Username" required>
      <input type="password" name="pass" placeholder="********" required>
      <input type="submit" name="submit" value="Login">
    </form>
  </body>
</html>
