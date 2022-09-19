<?php
// if (isset($_POST['register'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
// }
// database
$con = mysqli_connect('localhost', 'root', '', 'test');
if ($con->connect_error) {
    die("Connection Failed" . $con->connect_error);
} else {
    $query = "INSERT INTO registration(firstname,lastname,email,password) VALUES( '$firstname', '$lastname', '$email', '$password')";
    $run=mysqli_query($con,$query);
    // $stmt->bind_param("ssss", $firstname, $lastname, $email, $password);
    // $stmt->execute();
    include('C:\xampp\htdocs\FINAL\user\user.php');
    // $stmt->close();
    // $conn->close();
}