<!DOCTYPE html>
<html>
<head>
	<title>SI Music Player</title>
	<link rel="stylesheet" type="text/css" href="<?php echo ASSET; ?>css/style.css">
	
</head>
<body>
	<div class="container">
		<div class="header">
			<img src="<?php echo ASSET; ?>images/musik.png">
		</div>

		<div class="menu">
			<a href="index.php">Home</a>
			<a href="index.php?page=index_album">Album</a>
			<a href="index.php?page=index_login">Login</a>
		</div>

		<div class="main">
			
			<?php 

			if (isset($_GET['page'])) {
				include $_GET['page'] . ".php";
			} else {
				include "index_main.php";
			}

			?>

		</div>

		<div class="footer">
			Copyright Riska Juliana
		</div>
	</div>
</body>
</html>