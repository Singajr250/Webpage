<?php
$server = "localhost";
$user = "root";
$pass = "";
$db = "test";
$con = mysqli_connect($server,$user,$pass,$db);

if($con){
    echo " ";
   

}else{
    echo "Path Error".mysqli_error($con);
}
 
?>