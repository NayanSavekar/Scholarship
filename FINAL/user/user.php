
<div class="container" py-5>
    <div class="row" py-3>
        <div class="col-md-8">
            <div class="card" >
                <div class="card-body">
                  
                    <?php
                    include('C:\xampp\htdocs\FINAL\crud\dbcon.php');
                    $query="SELECT * FROM scholarship";
                    $query_run = mysqli_query($con, $query);
                     if(mysqli_num_rows($query_run)>0)
                     {
                    foreach($query_run as $row)
                    {
                     ?> 

                  <h1 class="card-title"><?php echo $row['title']; ?></h1>
                    <h4 class="card-text"> <?php echo $row['description']; ?>  </h4> 
                    <p class="card-text"><?php echo $row['eligible']; ?></p>
                    <p class="card-text"><?php echo $row['how']; ?></p> 
                    <br>
                    <?php
                  }
                }
                  else
                  {
                    echo "No record found";
                  }
                    ?>
                  </div>
            </div> 
            
          
        </div>
    </div>
</div>
