<center><h2>LIST ARTIST
	
</h2></center>
<body>
<div class ="kotak_input">

<?php 

$art = new App\Artist();
$rows = $art->tampil();

?>
<img src="layout/assets/images/musik.png">
<center><a href="dashboard.php?page=artist_input" class="tambah">Tambah</a>
<table>
	<tr>
		<th>NO</th>
		<th>NAMA</th>
		<th>EDIT</th>
	</tr>
	<?php foreach ($rows as $row) { ?>
		<tr>
			<td><?php echo $row['artist_id']; ?></td>
			<td><?php echo $row['artist_name']; ?></td>
			<td><a href="dashboard.php?page=artist_edit&id=<?php echo $row['artist_id']; ?>" class="btn">Edit</a></td>
		</tr>
		
	<?php } ?>
</table>
</center>