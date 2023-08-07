<?php
{
    $email=$_POST['email'];
    $password=$_POST['password'];
    // echo $email;
    $con= new mysqli('localhost','root','','test');
    if ($con->connect_error) {
        die("Connection Failed" . $con->connect_error);
    } else {
   
        $stmt=$con->prepare("SELECT * FROM REGISTRATION WHERE email =?");
        $stmt->bind_param("s",$email);
        $stmt->execute();
        $stmt_result=$stmt->get_result();
        if($stmt_result->num_rows>0)
        {
            $data=$stmt_result->fetch_assoc();
            if($data['password']==$password)
            {
                // echo "<h2>Login Successfully...</h2>";
                include('user.php');
            }
            else{
                echo "<h2>INVALID EMAIL or PASSWORD</h2>";
            }
        }
        else{
            echo "<h2>INVALID EMAIL PASSWORD</h2>";
        }
    }
}