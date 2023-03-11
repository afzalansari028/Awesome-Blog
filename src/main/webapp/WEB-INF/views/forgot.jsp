<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot Password</title>
     <style>
        body{
            background-image: url("assets/loginmodule/images/fp1bg.jpg");
           background-repeat: no-repeat;
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
            margin-top:100px;
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
            line-height:40px;
            text-align:center;
            background: peachpuff;
            border-radius: 25px;
            color:black;
            text-transform: uppercase;
            margin-top: 20px;
            cursor:pointer;
            text-decoration:none;
        }
        .box h2{
            margin-bottom: 30px;
            color:#fff;
            text-transform:uppercase;
            letter-spacing:2px;
        }
        .box{
        margin-top:100px;
        }
    </style>


</head>
<body>
      <div class="box" >
       <form action="send_otp" method="post">
        <h2>Forgot Password</h2>
        <p1 style="color:#c0c0c0;margin-bottom:5px;">${message}</p1>
        <input type="text" name="email" placeholder="Enter your registered email id..." required><br>
      <center>
         <button style="width:120px;" type="submit" class="btn"> Send OTP</button> 
      </center>
     </form> 
    </div>

  
</body>
</html>