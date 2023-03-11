<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot password</title>
    <style>
        body{
            background-image: url("assets/loginmodule/images/fp1bg.jpg");
            background-repeat:no-repeat;
            background-position:center center;
            font-family:poppins;
        }
        .box{
    width:500px;
    height:250px;
    margin:60px auto 0;
    background:rgba(0,0,0,0.6);
    text-align: center;
    padding:35px;
    border:3px solid #fff;
    border-radius:70px 0 70px 0;
}
input{
    width:100%;
    height:50px;
    border-radius: 15px 0 15px 0;
    border:2px solid #fff;
    margin-bottom:15px;
    color:black;
}
.btn{
    display:block;
    height:40px;
    width:130px;
    line-height:40px;
    text-align:center;
    background: burlywood;
    border-radius: 20px;
    color:black;
    text-transform: uppercase;
    margin-top: 10px;
    cursor:pointer;
    text-decoration:none;
}
.box h2{
    margin-bottom: 30px;
    color:#fff;
    text-transform:uppercase;
    letter-spacing:2px;
}
    </style>
</head>
<body>
   
       <div class="box" >
        <form action="verify_otp" method="POST">
            <h2>Forgot Password</h2>
             <p1 style="color:white;">${message}</p1>
            <!-- <input type="text" name="email" placeholder="qwerty@gmail.com"><br> -->
            <input type="text" name="otp" placeholder="Enter OTP here.." required><br>
            <center>
              <button type="submit" class="btn">Verify OTP</button>
            </center>
        </form>   
      </div>
       
   
</body>
</html>