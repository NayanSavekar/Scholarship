<?php
        session_start();
        require 'crud\dbcon.php';
        ?>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="f1.css"> -->
    <link rel="stylesheet" href="user.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scholarship Detail</title>
    <link rel="stylesheet" href="scholarshipDetail.css">
    <style>
        .container-xxl {
            padding: 5px;
            /* font: 24px/36px sans-serif; */
            /* width: 200px; */
            /* height: 200px; */
            border: 1px solid rgb(22, 5, 5);
            background-color: white;
            border-radius: 14px;
            background: transparent;
            color:white;
        }

        .scroll {
            margin-left: 122px;
            margin-right: 122px;
            height: 70vh;
            overflow: scroll;
            width: 90vw;

        }

        /* ::-webkit-scrollbar {
            width: 12px;
            height: 12px;
        }

        ::-webkit-scrollbar-track {
            border: 1px solid yellowgreen;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb {
            background: yellowgreen;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #88ba1c;
        } */
        .bold {
            display: block;
            font-size: xx-large;
            font-weight: bold;
            color: lightcyan;
            /* text-decoration: underline; */
        }

        .bold:hover {
            text-decoration: underline;
        }

        .content {
            /* justify-content: center; */
            color: white;
            /* overflow: scroll; */
        }

        .how {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="bg">
        <div class="navbar">
            <img src="pillailogo.png" class="logo">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">about us</a></li>
                <li><a href="#">creater</a></li>
            </ul>
        </div>
        <div class="scroll">
            <div class="container-xxl">
                <?php
                $query = "SELECT * FROM scholarship";
                $query_run = mysqli_query($con, $query);

                if (mysqli_num_rows($query_run) > 0) {
                    foreach ($query_run as $scholarship) {
                ?>
                <!-- <div class="content"> -->
                    <div class="bold">
                        <?= $scholarship['title']; ?>
                    </div>
                    <!-- <?= $scholarship['id']; ?> -->
                    <?= $scholarship['description']; ?>
                    <br>
                    <?= $scholarship['eligible']; ?> <br>
                    <span class="how"> For more details:-</span>
                    <?= $scholarship['how']; ?>
                <!-- </div> -->
            
            <hr>
            <?php
                        }
                    } else {
                    echo "<h5> No Record Found </h5>";
                    }
                    ?>
            </div>
        </div>

        <!-- </div> -->
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>

</html>





<!-- __________________________________
<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="user.css">
<style>
    .container-xxl {
        padding: 5px;
        /* font: 24px/36px sans-serif; */
        /* width: 200px;
            height: 200px; */
        border: 4px solid rgb(22, 5, 5);
        background-color: rgb(97, 212, 233);
        border-radius: 14px;
    }

    .scroll {
        height: 75vh;
        width: 100vw;
        overflow: scroll;
    }
</style>

<title>Student Scholarship</title>
</head>

<body>
    <div class="bg">
        <div class="navbar">
            <img src="pillailogo.png" class="logo">
            <ul>
                <li><a href="http://localhost/FINAL/f1.html">Home</a></li>
                <li><a href="#">about us</a></li>
                <li><a href="#">creater</a></li>
            </ul>
        </div>

        <div class="container mt-4">
            <div class="row">
                <div class="scroll">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Scholarship Details
                                   
                                </h4>
                            </div>
                            <div class="card-body">

                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Eligible</th>
                                            <th>How to apply</th>
                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                        

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        </div>
</body>

</html> --> -->