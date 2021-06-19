<?php 

$id = $_GET['id'];

$art = new App\Artist();
$row = $art->edit($id);
?>

<center><h2>EDIT ARTIS</h2></center>
<body>
<div class ="kotak_input">

<form method="POST" action="artist_proses.php">
	<input type="hidden" name="artist_id" value="<?php echo $id; ?>">
	<img src="layout/assets/images/musik.png">
	<center><table>
		<tr>
			<td>NAMA</td>
			<td><input type="text" name="artist_name" value="<?php echo $row['artist_name']; ?>" required=""></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="btn-update" value="UPDATE"></td>
		</tr>
	</table></center>
</form>