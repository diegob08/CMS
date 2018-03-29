<?php
//ini_set('display_errors',1);
//error_reporting(E_ALL);
require_once('phpscripts/config.php');
//confirm_logged_in();
$tbl = "tbl_user";
$users = getAll($tbl);
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Movie</title>
</head>
<body>
<a href="admin_movies.php">Back to Movie Admin Page</a><br>
<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>

<h1>Welcome Company Name to your admin page</h1>
<?php echo deleteMovie($_GET['movies_id']); ?>
</html>