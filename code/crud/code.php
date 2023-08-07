<?php
session_start();
require 'dbcon.php';

if(isset($_POST['delete_scholarship']))
{
    $scholarship_id = mysqli_real_escape_string($con, $_POST['delete_scholarship']);

    $query = "DELETE FROM scholarship WHERE id='$scholarship_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Scholarship Deleted Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Scholarship Not Deleted";
        header("Location: index.php");
        exit(0);
    }
}

if(isset($_POST['update_scholarship']))
{
    $scholarship_id = mysqli_real_escape_string($con, $_POST['scholarship_id']);

    $title = mysqli_real_escape_string($con, $_POST['title']);
    $description = mysqli_real_escape_string($con, $_POST['description']);
    $eligible = mysqli_real_escape_string($con, $_POST['eligible']);
    $how = mysqli_real_escape_string($con, $_POST['how']);

    $query = "UPDATE scholarship SET title='$title', description='$description', eligible='$eligible', how='$how' WHERE id='$scholarship_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Scholarship Updated Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Scholarship Not Updated";
        header("Location: index.php");
        exit(0);
    }

}


if(isset($_POST['save_scholarship']))
{
    $title = mysqli_real_escape_string($con, $_POST['title']);
    $description = mysqli_real_escape_string($con, $_POST['description']);
    $eligible = mysqli_real_escape_string($con, $_POST['eligible']);
    $how = mysqli_real_escape_string($con, $_POST['how']);

    $query = "INSERT INTO scholarship (title,description,eligible,how) VALUES ('$title','$description','$eligible','$how')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Scholarship Created Successfully";
        header("Location: scholarship-create.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Scholarship Not Created";
        header("Location: scholarship-create.php");
        exit(0);
    }
}

?>