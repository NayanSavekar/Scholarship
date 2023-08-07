<?php
{
    @$name=$_POST['name'];
    @$password=$_POST['password'];

    $con= new mysqli('localhost','root','','test');
    if ($con->connect_error) {
        die("Connection Failed" . $con->connect_error);
    } else {
   
        $stmt=$con->prepare("SELECT * FROM admin WHERE name = ?");
        $stmt->bind_param("s", $name);
        $stmt->execute();
        $stmt_result=$stmt->get_result();
        if($stmt_result->num_rows>0)
        {
            $data=$stmt_result->fetch_assoc();
            if($data['password']==$password)
            {
                // echo "<h2>Login Successfully...</h2>";
                include('admin.html');
            }
            else{
                echo "<h2>INVALID  PASSWORD</h2>";
            }
        }
        else{
            echo "<h2>INVALID EMAIL</h2>";
        }
    }
}