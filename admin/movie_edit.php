<?php
require_once('phpscripts/config.php');
confirm_logged_in();


switch ($_GET['action']) {
    case'delete':
        if (!isset($_GET['id'])) {
            redirect_to("../admin_movies.php");
        }


        $delstring = "DELETE FROM tbl_movies WHERE movies_id={$_GET['id']}";
        $delquery = mysqli_query($link, $delstring);
        if ($delquery) {
            redirect_to("../admin_movies.php");
        } else {
            $message = "Failed to delete movie";
            return $message;
        }
        mysqli_close($link);
        break;

    case 'edit':
        if (!isset($_GET['id'])) {
            redirect_to("../admin_movies.php");
        }
        $movie_item = getSingle('tbl_movies', 'movies_id', $_GET['id']);
        break;

    case 'update':
        if (!isset($_GET['id'])) {
            redirect_to("../admin_movies.php");
        }

        break;


    case 'create':
        break;
}
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Movie</title>
</head>
<body>
<a href="admin_index.php">Back to User Admin Page</a><br>
<?php

if (isset($movie_item)) {
    $row = mysqli_fetch_array($movie_item);
    echo '<h2>Update Movie ' . $row['movies_title'] . '</h2>';
} else {
    $row = array(
        'movies_title' => '',
        'movies_year' => '',
        'movies_cover' => '',
        'movies_release' => '',
        'movies_runtime' => '',
        'movies_trailer' => '',
        'movies_storyline' => '',
    );

    echo '<h2>Create New Movie Entry</h2>';
};


?>
<form action="" enctype="multipart/form-data">
    <fieldset>
        <label for="movie-title">Movie Title</label><br>
        <input id="#movie-title" type="text" name="movies_title" value="<?php echo $row['movies_title']; ?>">
    </fieldset>
    <fieldset>
        <label for="movie-year">Movie Year</label><br>
        <input id="#movie-year" type="text" name="movies_year" value="<?php echo $row['movies_year']; ?>">
    </fieldset>
    <fieldset>
        <label for="movie-cover">Movie Cover</label><br>
        <input id="#movie-cover" type="file" name="movies_cover" value="<?php echo $row['movies_cover']; ?>">
        <?php if (!empty($row['movies_cover'])): ?>
            <img src="/images/<?php echo $row['movies_cover']; ?>" width="200">
        <?php endif; ?>
    </fieldset>
    <fieldset>
        <label for="movie-release">Movie Release</label><br>
        <input id="#movie-release" type="text" name="movies_release" value="<?php echo $row['movies_release']; ?>">
    </fieldset>
    <fieldset>
        <label for="movie-runtime">Movie Runtime</label><br>
        <input id="#movie-runtime" type="text" name="movies_runtime" value="<?php echo $row['movies_runtime']; ?>">
    </fieldset>
    <fieldset>
        <label for="movie-trailer">Movie Trailer</label><br>
        <input id="#movie-trailer" type="file" name="movies_trailer" value="<?php echo $row['movies_trailer']; ?>">
    </fieldset>
    <fieldset>
        <label for="movie-storyline">Movie Story</label><br>
        <textarea id="#movie-storyline" name="movies_storyline"><?php echo trim($row['movies_storyline']); ?></textarea>
    </fieldset>

    <button type="submit">Save</button>
</form>
</body>