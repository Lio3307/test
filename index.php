<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    // function aurelio(){
    //     echo "fungsi aurelio"."<br>";
    // }

    // function tambah(int $a, int $b){
    //     return $a + $b;
    // }

    // aurelio();
    // echo " 5 + 10 = ".tambah(5,10). "</br>";

    $processor = array("Intel", "AMD", "SnapDragon");
    $hitung = count($processor);

    for($i = 0; $i < $hitung; $i++){
        echo $i + 1 ;
        echo $processor[$i];
        echo "<br>";
    }
   
    $connection = mysqli_connect('localhost', 'root', '', 'siswa');
    if ($connection){
        echo "Connected";
    }else {
        echo "Connection Error";
    }

    $query_mysql = mysql_query("SELECT * FROM murid")or die(mysql_error());
?>
<form action="">
    <label for="">Username</label>
    <input type="text" name="" id="">
    <label for="">Password</label>
    <input type="password" name="" id="">
    <tr>
		<td><?php echo $nomor++; ?></td>
		<td><?php echo $data['nama']; ?></td>
		<td><?php echo $data['alamat']; ?></td>
    </tr>
    </form>
</body>
</html>