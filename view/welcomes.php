<?php
session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome!</title>
<link rel="shortcut icon" href="/C:\xampp\htdocs\files\Logo.png" type="image/x-png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. You have successfully logged in to Event Management System. <br />Smarter way to book event online</h1>
    </div>
    <p>
    <div class="profile">
		<a href="browsev2.php" class="btn btn-success">Browse available Event</a>
		<a href="appointmentv2.php" class="btn btn-success">Book event</a>
		<a href="profile.php" class="btn btn-success">Your account</a>
		<a href="editprofiles.php" class="btn btn-success">Edit profile</a>
    </div>
    </p>
<p>
        <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
    </p>
</body>
</html>