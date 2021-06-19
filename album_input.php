<?php 

$alb = new App\Album();
$lst = $alb->listArtist();
?>

<center><h2>TAMBAH ALBUM</h2></center>
<body>
<div class ="kotak_input">
<center><img src="layout/assets/images/musik.png"></center>
<form method="POST" action="album_proses.php">
	<center><table>
		<tr>
			<td>NAMA</td>
			<td><input type="text" name="album_name" required=""></td>
		</tr>
		<tr>
			<td>ARTIS</td>
			<td>
				<select name="album_id_artist">
					<?php foreach ($lst as $ls) { ?>
					<option value="<?php echo $ls['artist_id']; ?>"><?php echo $ls['artist_name']; ?></option>
					<?php } ?>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="btn-simpan" value="SIMPAN"></td>
		</tr>
	</table>
	</center>
</form>