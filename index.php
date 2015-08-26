<?php

include 'config.php';

$q = mysqli_query($db, 'SELECT * FROM khachhang');
?>

<script>
function xoasanpham(){
	var conf =confirm("Bản có chắc chắn muốn xóa không");
	return conf;
	}
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Home</title>
	<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table border="0">
		<tr id="tieude">
        <h2>Huyntph03066</h2>
			<td>Id</td>
			<td>Họ và tên</td>
			<td>Email</td>
			<td>Địa chỉ</td>
            <td colspan="2" style="text-align:center;"><a href="add.php?id='.$row['id'].'">Thêm sản phẩm</a></td>
		</tr>	

		<?php 

			while ($row = mysqli_fetch_assoc($q)) {
				echo '<tr>';
				echo '<td>'.$row['id'].'</td>';
				echo '<td>'.$row['fname'].' '.$row['lname'].'</td>';
				echo '<td>'.$row['email'].'</td>';
				echo '<td>'.$row['address'].'</td>';
				echo '<td style="text-align:center;"><a href="edit.php?id='.$row['id'].'">Sửa</a></td>';
				echo '<td style="text-align:center;"><a onclick="return xoasanpham();" href="delete.php?id='.$row['id'].'">Xóa</a></td>';
				echo '</tr>';
			}


		 ?>
	</table>
</body>
</html>



