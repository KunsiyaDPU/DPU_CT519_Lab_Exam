<?php

$mysql_hostname = "10.1.100.22";  //เครื่อง Docker
$mysql_user = "KSY"; //ชื่อของเครื่องตัวเอง
$mysql_password = "p@ssword";
$mysql_database = "0009_Lab_Exam";
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password,$mysql_database) or die("Could not connect database");

if (!$bd) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully".'<br>';

$sql_stmt = "select * from Hero";

$result=mysqli_query($bd,$sql_stmt);
if(!$result)
{
die("Database access failed".mysqli_error());
}

$rows=mysqli_num_rows($result);
if($rows){
   echo '<!DOCTYPE html><html lang="en-US"><head><title>การแสดงรายชื่อ Hero โดย นางสาว กุลศิญา ธรรมโชติกา</title></head>';
 while($row = mysqli_fetch_array($result)){
   echo 'Image Hero : <img src="'.$row['Picture_link'].'" ><br>';
   echo "<a href='hero.php?/Hero_id={$row['Hero_id']}'>{$row['Name']}</a>";
	}
   echo  'Developed by <a href="about.php">Kunsiya Thammachotika</a>';
   echo '</body></html>';
}

//Free result set
mysqli_free_result($result);
mysqli_close($bd);
?>

