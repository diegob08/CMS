<?php
//ini_set('display_errors',1);
//error_reporting(E_ALL);

require_once('phpscripts/config.php');

if (!isset($_GET['movies_id'])) {
    redirect_to("admin_movies.php");
}

if (isset($_POST['submit'])) {
    $id = $_POST['id'];
    $title = $_POST['title'];
    $cover = $_FILES['cover'];
    $year = $_POST['year'];
    $runtime = $_POST['runtime'];
    $storyline = $_POST['storyline'];
    $trailer = $_POST['trailer'];
    $release = $_POST['release'];
    $genre = $_POST['genList'];
    $uploadMovie = updateMovie($id, $title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre);
    $message = $uploadMovie;
}
$getSelectedMovieQuery = getSingle('tbl_movies', 'movies_id', $_GET['movies_id']);
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Movie</title>
</head>
<body>
<a href="admin_movies.php">Back to Movie Admin Page</a><br>
<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>

<h1>Welcome Company Name</h1>
<?php if (!empty($message)) {
    echo $message;
} ?>
<?php while ($movie = mysqli_fetch_array($getSelectedMovieQuery)): ?>
    <form action="admin_editmovie.php?movies_id=<?php echo $movie['movies_id']; ?>" method="post"
          enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $movie['movies_id']; ?>">

        <label>Movie Title:</label>
        <input name="title" type="text" value="<?php echo $movie['movies_title']; ?>"><br><br>
        <label>Movie Cover Image:
            <?php if (!empty($movie['movies_cover'])): ?>
                <img src="/images/<?php echo $movie['movies_cover']; ?>" width="200">
            <?php endif; ?></label>
        <input name="cover" type="file" value="<?php echo $movie['movies_cover']; ?>"><br><br>
        <label>Movie Year:</label>
        <input name="year" type="text" value="<?php echo $movie['movies_year']; ?>"><br><br>
        <label>Movie Runtime</label>
        <input name="runtime" type="text" value="<?php echo $movie['movies_runtime']; ?>"><br><br>
        <label>Movie Storyline</label>
        <input name="storyline" type="text" value="<?php echo $movie['movies_storyline']; ?>"><br><br>
        <label>Movie Trailer</label>
        <input name="trailer" type="text" value="<?php echo $movie['movies_trailer']; ?>"><br><br>
        <label>Movie Release</label>
        <input name="release" type="text" value="<?php echo $movie['movies_release']; ?>"><br><br>
        <select name="genList">
            <option value="">Please select a genre</option>
            <?php
            $tbl = "tbl_genre";
            $genQuery = getAll($tbl);
            while ($row = mysqli_fetch_array($genQuery)) {
                echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
            }
            ?>
        </select><br><br><br>
        <input type="submit" name="submit" value="Update Movie">
    </form>
<?php endwhile; ?>
</body>
</html>