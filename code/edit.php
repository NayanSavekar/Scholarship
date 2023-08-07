<?php
// if (isset($_POST['register'])) {
    $Title = $_POST['Title'];
    $Des = $_POST['Des'];
    $Who = $_POST['Who'];
    $How = $_POST['How'];
// }
// database
$con = mysqli_connect('localhost', 'root', '', 'test');
if ($con->connect_error) {
    die("Connection Failed" . $con->connect_error);
} else {
    $query = "INSERT INTO scholarship(Title,Des,Who,How) VALUES( '$Title', '$Des', '$Who', '$How')";
    $run=mysqli_query($con,$query);
    // $stmt->bind_param("ssss", $firstname, $lastname, $email, $password);
    // $stmt->execute();
    include('scholarshipDetail.html');
    // $stmt->close();
    // $conn->close();
}