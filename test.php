<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Test</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="css/myStyle.css" type="text/css" rel="stylesheet" />
<script src="jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
        <div class="row" id="header">
            <h1>Test your Skills</h1>
            <div class="pull-right">
            	<ul class="nav nav-pills" style="margin-top:-50px; margin-right:100px">
                	<li><a href="index.html">Home</a></li>
                    <li><a href="learn.php">Learn</a></li>
                    <li class="active"><a href="test.php">Test</a></li>
                    <li><a href="move.php">Move Around</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
        	<?php
				require_once('connection.php');
				$num = rand(5,10);
				$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) or die("Error connecting to the database");
				$query = "SELECT * FROM quiz limit $num,5";
				$result = mysqli_query($conn,$query);
				$i=1;
				echo '<br><br>';
				while($row = mysqli_fetch_array($result)) {
					echo '<div class="container">';
					echo '<p >'.$i.'. '.$row['ques'].'</p>';
					echo '<p><input type="radio" id="'.$row['id'].'" name="'.$row['id'].'" value="1">  '.$row['op1'].'</input>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="'.$row['id'].'" name="'.$row['id'].'" value="2">  '.$row['op2'].'</input></p>';
					$i=$i+1;
					echo '<p><a href="#">Answer:</a></p>';
					echo '<p class="answer" display="style:none">'.$row['correct'].'</p>';
				}
			?>
        </div>
    </div>
    <script>
		function showAnswer(var id) {
			console.log(id);
		}
    </script>
</body>
</html>