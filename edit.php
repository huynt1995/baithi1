<?php 
	include 'config.php';
	$id = $_GET['id'];
 ?>
 <html>
 <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Edit</title>
 </head>
 <body>

 	<?php 


 		if (isset($_POST['submit'])) {
			$fname = $_POST['fname'];
			$lname = $_POST['lname'];
			$email = $_POST['email'];
			$address = $_POST['address'];

			$query = mysqli_query($db, "UPDATE khachhang SET fname = '$fname', lname = '$lname', email = '$email', address = '$address' WHERE id = $id");

			if ($query) {
				echo "lưu thành công";
				header('Location: index.php');
			} else {
				echo "Lỗi";
			}
		}



 		$q = mysqli_query($db, "SELECT * FROM khachhang WHERE id = $id");


 		while ($row = mysqli_fetch_assoc($q)) {

 	 ?>
 	 	<table>
 	 	<form action="" method="POST">
 	 	<tr>
	 		<td>Fname:</td>
	 		<td><input type="text" name="fname" value="<?php echo $row['fname']; ?>"></td>
	 	</tr>
	 	<tr>
	 		<td>Lname:</td>
	 		<td><input type="text" name="lname" value="<?php echo $row['lname']; ?>"></td>
	 	</tr>
	 	<tr>
	 		<td>Email:</td>
	 		<td><input type="text" name="email" value="<?php echo $row['email']; ?>"></td>
	 	</tr>
	 	<tr>
	 		<td>Add:</td>
	 		<td><input type="text" name="address" value="<?php echo $row['address']; ?>"></td>
 		</tr>

	 	<tr>
 		<td><button name="submit">Save</button></td>
 		</tr>
 		</form>
 		</table>

 	<?php } ?>
 </body>
 </html>