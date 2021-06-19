<center><h2>LIST ALBUM
	
</h2></center>
<body>
<div class ="kotak_input">
<?php 

$alb = new App\Album();
$rows = $alb->tampil();

?>
<img src="layout/assets/images/musik.png">
<center>
<table><a href="dashboard.php?page=album_input" class="tambah">Tambah</a>
	<tr>
		<th>NO</th>
		<th>NAMA</th>
		<th>ARTIS</th>
		<th>EDIT</th>
	</tr>
	<?php $no=0; foreach ($rows as $row) { $no++;?>
		<tr>
			<td><?php echo $no; ?></td>
			<td><?php echo $row['album_name']; ?></td>
			<td><?php echo $row['ART']; ?></td>
			<td><a href="dashboard.php?page=album_edit&id=<?php echo $row['album_id']; ?>" class="btn">Edit</a></td>
		</tr>
	<?php } ?>
</table>
</center>