<?php

//Create connection
$con = new mysqli("localhost", "root", "", "acc_db");

//check connection
if ($con->connect_error){
	die ("Connection failed: " .$conn->connect_error);
}

$NOTE = $_POST["memo"];

$sql= "INSERT INTO acc(NOTE)VALUES('$NOTE')";

if($con->query($sql)){
echo "Inserted successfully";

header("Location:http://localhost/MLB%2005.02_01/html/Accountant.html");

}
else{
echo "Error:". $con->error;
}
$con->close();
?>