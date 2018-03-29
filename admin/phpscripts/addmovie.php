<?php
function addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre)
{
    include("connect.php");
    if ($_FILES['cover']['type'] == "image/jpeg" || $_FILES['cover']['type'] == "image/jpg") {
        $target = "../images/{$cover['name']}";
        if (move_uploaded_file($_FILES['cover']['tmp_name'], $target)) {

            $orig = "../images/{$cover['name']}";
            $th_copy = "../images/TH_{$cover['name']}";
            if (!copy($orig, $th_copy)) {
                echo "Failed to copy";
            }

            //$size = getimagesize($orig);
            //echo $size[1];
            //$image = $cover['name'];
            $addstring = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}','{$title}','{$year}','{$runtime}','{$storyline}','{$trailer}','{$release}')";
            //echo $addstring;
            $addresult = mysqli_query($link, $addstring);
            if ($addresult) {
                $qstring = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
                $lastmovie = mysqli_query($link, $qstring);
                $row = mysqli_fetch_array($lastmovie);
                $lastID = $row['movies_id'];
                //echo $lastID;
                $genstring = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
                $genresult = mysqli_query($link, $genstring);
                redirect_to("admin_index.php");
            }
        }
    }
    mysqli_close($link);
}

function updateMovie($id, $title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre)
{
    include("connect.php");
    $updatestring = 'UPDATE tbl_movies SET ';
    if ($_FILES['cover']['type'] == "image/jpeg" || $_FILES['cover']['type'] == "image/jpg") {
        $target = "../images/{$cover['name']}";
        if (move_uploaded_file($_FILES['cover']['tmp_name'], $target)) {

            $orig = "../images/{$cover['name']}";
            $th_copy = "../images/TH_{$cover['name']}";
            if (!copy($orig, $th_copy)) {
                echo "Failed to copy";
            }


            //$size = getimagesize($orig);
            //echo $size[1];
            //$image = $cover['name'];
            $updatestring .= "movies_cover = '{$cover['name']}', ";
        }
    }
    $updatestring .= "movies_title = '{$title}', ";
    $updatestring .= "movies_year = '{$year}', ";
    $updatestring .= "movies_runtime = '{$runtime}', ";
    $updatestring .= "movies_storyline = '{$storyline}', ";
    $updatestring .= "movies_trailer = '{$trailer}', ";
    $updatestring .= "movies_release = '{$release}'";
    $updatestring .= "WHERE movies_id = '{$id}' ";

    #echo $updatestring;exit;

    //echo $addstring;
    $addresult = mysqli_query($link, $updatestring);
    if ($addresult) {
        return 'Update successfully!';
    } else {
        return 'Some error happened!';
    }
    mysqli_close($link);
}

function editMovie($id, $cover, $title, $year, $runtime, $storyline, $trailer, $release)
{
    include('connect.php');
    $updatestring = "UPDATE tbl_user SET movies_cover='{$cover}', movies_title='{$title}', movies_year='{$year}', movies_runtime='{$runtime}', movies_storyline='{$storyline}', movies_trailer='{$trailer}' , movies_release='{$release}' WHERE movies_id={$id}";
    //echo $updatestring;
    $updatequery = mysqli_query($link, $updatestring);
    if ($updatequery) {
        redirect_to("admin_movies.php");
    } else {
        $message = "There was a problem changing your information, please contact your web admin.";
        return $message;
    }
    mysqli_close($link);
}

function deleteMovie($id)
{
    //echo $id;
    include('connect.php');
    $delstring = "DELETE FROM tbl_movies WHERE movies_id={$id}";
    $delquery = mysqli_query($link, $delstring);
    $message = "Failed to delete movie";
    if ($delquery) {
        $message = 'Delete Successfully!';
    }
    mysqli_close($link);
    return $message;
}

?>