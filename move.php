<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Move Around</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="css/myStyle.css" type="text/css" rel="stylesheet" />
<script src="jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
        <div class="row" id="header">
            <h1>Move Around</h1>
            <div class="pull-right">
            	<ul class="nav nav-pills" style="margin-top:-50px; margin-right:100px">
                	<li><a href="index.html">Home</a></li>
                    <li><a href="learn.php">Learn</a></li>
                    <li><a href="test.php">Test</a></li>
                    <li class="active"><a href="move.php">Move Around</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
        	<div class="col-md-4">
            	<center><img src="images/search.png" class="img-circle" style="width:150px; height:150px; margin-top:50px" />
                <h3><strong>Search Places</strong></h3>
                <p>Looking for some place,<br /> well came to right one!!</p>
                <a href="placeSearch.html">Search For It</a>
                </center>
            </div>
            <div class="col-md-4">
            	<center><img src="images/weather.png" class="img-circle" style="width:150px; height:150px; margin-top:50px" />
                <h3><strong>Weather</strong></h3>
                <p>hey, how's outside??</p>
                <a href="weather.html">Look Out</a>
                </center>
            </div>
            <div class="col-md-4">
            	<center><img src="images/photo.png" class="img-circle" style="width:150px; height:150px; margin-top:50px" />
                <h3><strong>Panoramio Layer</strong></h3>
                <p>lost in the world of pictures !!</p>
                <a href="panoramioLayer.html">See Around</a>
                </center>
            </div>
        </div>
    </div>
</body>
</html>