<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Learn</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="css/myStyle.css" type="text/css" rel="stylesheet" />
<script src="jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
        <div class="row" id="header">
            <h1>Indian States</h1>
            <div class="pull-right">
            	<ul class="nav nav-pills" style="margin-top:-50px; margin-right:100px">
                	<li><a href="index.html">Home</a></li>
                    <li><a href="learn.php">Learn</a></li>
                    <li><a href="test.php">Test</a></li>
                    <li><a href="move.php">Move Around</a></li>
                </ul>
            </div>
        </div>
            <br /><br />
       	<div class="container-fluid">
            <div class="row">
                <div class="col-md-2" id="state_nav">
                	<ul class="nav nav-pills nav-stacked" style="background:#EEE; padding:10px;">
                    <?php
						require_once('connection.php');
						$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) or die("Error connecting to the database");
						$query = "SELECT state_name,state_id FROM states";
						$result = mysqli_query($conn,$query) or die('Error querying the database');
						while($row = mysqli_fetch_array($result)) {
							$state_name = $row['state_name'];
							$state_id1 = $row['state_id'];
							if($state_id1==$_GET['state']) { echo '<li class="active"><a href="states.php?state='.$state_id1.'">'.$state_name.'</a></li>'; }
                            else { echo '<li><a href="states.php?state='.$state_id1.'">'.$state_name.'</a></li>'; }
						}
					?>
                    </ul>
                </div>
                <?php
					$state_id = $_GET['state'];
					$query="SELECT * FROM states WHERE state_id=$state_id";
					$result = mysqli_query($conn,$query) or die('Error querying');
					$row = mysqli_fetch_array($result);
				?>
                 <div class="col-md-4" id="state_img">
                    <img src="<?php echo $row['image']; ?>" alt=<?php echo $row['image']; ?> width="400px" height="400px" />
                </div>
                <div class="col-md-6" id="state_info">
                    <table class="table table-striped">
                        <tr>
                            <th>Name:</th>
                            <td><?php echo $row['state_name']; ?></td>
                        </tr>
                        <tr>
                            <th>Population:</th>
                            <td><?php echo $row['population']; ?></td>
                        </tr>
                        <tr>
                            <th>Languages:</th>
                            <td><?php echo $row['languages']; ?></td>
                        </tr>
                        <tr>
                            <th>Area:</th>
                            <td><?php echo $row['area']; ?></td>
                        </tr>
                        <tr>
                            <th>Capital:</th>
                            <td><?php echo $row['capital']; ?></td>
                        </tr>
                        <tr>
                            <th>Literacy Rate:</th>
                            <td><?php echo $row['literacy_rate']; ?></td>
                        </tr>
                        <tr>
                            <th>Additional Information:</th>
                            <td><?php echo $row['info']; ?></td>
                        </tr>
                    </table>
                    
                </div>
                 <div class="row">
                <ul class="nav nav-pills nav-justified navbar-fixed-bottom">
                    <?php
						if($state_id==1) {
							?><li><a class="disabled">Previous</a></li><?php
						} else {
					?>
                    <li><a href="states.php?state=<?php echo $state_id-1; ?>">Previous</a></li>
                    <?php }
					if($state_id==10) {
						?><li><a class="disabled">Next</a></li>
						<?php }
					 else {
					 ?>
         <li><a href="states.php?state=<?php echo $state_id+1; ?>">Next</a></li>
                	<?php } ?>
                </ul> 
            </div>
            </div>
           
        </div>
    </div>
</body>
</html>