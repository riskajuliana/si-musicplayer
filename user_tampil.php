<h2>DATA USER
	
</h2>

<body>
<div class ="kotak_input">
<?php 

$usr = new App\User();
$rows = $usr->tampil();

?>
<img src="layout/assets/images/musik.png">
<center><a href="dashboard.php?page=user_input" class="tambah">Tambah</a><table>
	<tr>
		<th>NO</th>
		<th>USERNAME</th>
		<th>EMAIL</th>
		<th>NAMA LENGKAP</th>
		<th>ROLE</th>
		<th>EDIT</th>
	</tr>
	<?php foreach ($rows as $row) { ?>
		<tr>
			<td><?php echo $row['user_id']; ?></td>
			<td><?php echo $row['user_name']; ?></td>
			<td><?php echo $row['user_email']; ?></td>
			<td><?php echo $row['user_nama_lengkap']; ?></td>
			<td>
				<?php 
				if($row['user_role'] == 1) {
					echo "Administrator";
				} else {
					echo "Operator";
				}
				?>				
			</td>
			<td><a href="dashboard.php?page=user_edit&id=<?php echo $row['user_id']; ?>" class="btn">Edit</a></td>
		</tr>
	<?php } ?>
</table></center>