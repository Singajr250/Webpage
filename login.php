<?php
require("base.php");
$greetings= "Welcome from webserver";
if(isset($_POST['bika'])){
$FName=$_REQUEST["FName"];
$LName=$_REQUEST["LName"];
$Email=$_REQUEST["Email"];
$Password=$_REQUEST["Password"];
 $query="INSERT INTO Doctor(Dr_FName,Dr_LName,Dr_Email,Dr_Password) VALUE('$FName','$LName','$Email',$Password)";
 $rs = mysqli_query($con,$query);
 if($rs){
    //echo $greetings." ".$FName." ".$LName."</br>";
    require("page1.php");
 }
 else{
    echo "Enter Correct Identifications";

}}
if(isset($_POST['bikura'])){
    $Email=$_REQUEST["Email"];
    $feedback="Enter Correct Identifications";
$Password=$_REQUEST["Password"];
    $query= "SELECT Dr_Id,Dr_FName,Dr_LName FROM Doctor WHERE (Dr_Email='$Email' AND Dr_Password=$Password)";
    $re = mysqli_query($con,$query);
    if($re){
        while($row = mysqli_fetch_array($re)){
           // echo  $row["Dr_Id"].", ".$row["Dr_FName"]." ".$row["Dr_LName"]."</br>";
           require("page1.php");
     }}
     else{
        while($row != mysqli_fetch_array($re)){
        echo $feedback; 
     } 
     }}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
   <!-- <embed type="image/jpg" src="pc2.png">-->
    <div id="login-form" class="login-page">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" onclick="login()" class="toggle-btn">Log In</button>
                <button type="button" onclick="register()" class="toggle-btn">Register</button>
                </div>
                <form id="login" class="input-group-login" method="POST" action=" ">
                    <input type="text" name="Email" class="input-field" placeholder="Email " required>
                    <input type="password" name="Password" class="input-field" placeholder="Enter password " required>
                    <input type="checkbox" class="check-box"><span>Doctor</span>
                   
                    <input type="checkbox" class="check-box"><span>Coach</span></br>
                    <input type="checkbox" class="check-box"><span>Remember Password</span>
                    <button type="submit" class="submit-btn" name="bikura">Log In</button>
                </form>
                <form id="register" class="input-group-register" method="POST" action=" ">
                    <input type="text" name="FName" class="input-field" placeholder="First Name" required>
                    <input type="text" name="LName" class="input-field" placeholder="Last Name" required>
                    <input type="email" name="Email" class="input-field" placeholder="Email " required>
                    <input type="password" name="Password" class="input-field" placeholder="Enter password" required>
                    <input type="password" class="input-field" placeholder="Confirm password" required>
                    <input type="checkbox" class="check-box" name="doctor"><span>Doctor</span>
                    <input type="checkbox" class="check-box" name="coach"><span>Coach</span></br>
            <input type="checkbox" class="check box"><span>I agree to the terms and condtionns </span>
                    <button type="submit" class="submit-btn" name="bika">Register</button>
                    
                    
                </form>
               <script>
                   var x =document.getElementById("login");
                   var y =document.getElementById('register');
                   var z=document.getElementById('btn');
                   function register(){
                       x.style.left='400px';
                       y.style.left='60px';
                       z.style.left='110px'

                   } 
                function login(){
                    x.style.left='50px';
                    y.style.left='450px';
                    z.style.left='0px';

                }
                </script>
    <script>
var modal = document.getElementById('login-form');
window.onclick = function(event)
{
    if(event.target==modal)
    {
        modal.style.display = "none";
        
    }}

</script>

</body>
</html>