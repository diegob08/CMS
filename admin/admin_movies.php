<?php
//ini_set('display_errors',1);
//error_reporting(E_ALL);
require_once('phpscripts/config.php');
confirm_logged_in();
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CMS Portal</title>
</head>
<body>
<h1>Welcome to Movies Dashboard</h1>
<?php echo "<h2>Hi-{$_SESSION['user_name']}</h2>"; ?>

<a href="admin_index.php">Back to User Admin Page</a><br>
<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>


<?php $tbl = "tbl_movies";
$getMovies = getAll($tbl); ?>
<a href="admin_addmovie.php">Add New Movie</a>
<h3>Current List: <?php echo $getMovies->num_rows; ?> Movies</h3>
<table>
    <thead>
    <tr>
        <th>#</th>
        <th>Thumbnail</th>
        <th>Title</th>
        <th>Year</th>
        <th>Operation</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $counter = 1;
    while ($row = mysqli_fetch_array($getMovies)): ?>
        <tr>
            <td><?php echo $counter; ?></td>
            <td>
                <img src="/images/<?php echo $row['movies_cover']; ?>" alt="<?php echo $row['movies_title']; ?>"
                     height="150">
            </td>
            <td><?php echo $row['movies_title']; ?></td>
            <td><?php echo $row['movies_year']; ?></td>
            <td>
                <a href="admin_editmovie.php?movies_id=<?php echo $row['movies_id']; ?>">Edit</a><br>
                <a href="admin_deletemovie.php?movies_id=<?php echo $row['movies_id']; ?>">Delete</a>
            </td>
        </tr>
        <?php
        $counter++;
    endwhile; ?>
    </tbody>
</table>
</body>
</html>