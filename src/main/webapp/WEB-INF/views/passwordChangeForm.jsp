<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Rsest password</title>
    <style>
        body{
		    background-image: url("assets/loginmodule/images/resetPassword.jpg");
		    background-size:cover;
		    background-repeat:no-repeat;
		    background-position:center center;
		    font-family:poppins;
		}
	.box{
	    width:500px;
	    height:450px;
	    margin:60px auto 0;
	    background:rgba(0,0,0,0.6);
	    text-align: center;
	    padding:35px;
	    border:3px solid #fff;
	    border-radius:70px 0 70px 0;
	}
.box h2{
    margin-bottom: 30px;
    color:#fff;
    text-transform:uppercase;
    letter-spacing:2px;
}
input{
    width:100%;
    height:50px;
    border-radius: 15px 0 15px 0;
    border:2px solid #fff;
    margin-bottom:15px;
    background:transparent;
    color:#fff;
}
.box p{
    text-align:left;
    color:#fff;
    text-transform: uppercase;
    font-weight:bold;

}
.btn{
    display:block;
    height:40px;
    width:450px;
    line-height:40px;
    text-align:center;
    background: Orange;
    border-radius: 25px;
    color:black;
    text-transform: uppercase;
    margin-top: 10px;
    cursor:pointer;
    text-decoration:none;
    letter-spacing: 4px;
}
	.box button{
	margin-top:30px;
	margin-left:25px;
	
	}

    </style>
</head>
<body>
   <form action="reset_password" method="post">
    <div class="box">
        <h2>Reset Password</h2>
        <p1 style="color:#c0c0c0;">${message}</p1>
        <p>New Password:</p>
        <input type="password" id="password" name="newPassword" required>
        <p>Confirm Password:</p>
        <input type="password" id="password" name="confirmPassword" required>
        
        <button type="submit" class="btn" id="submit" >Save Password</button>
    </div>
</form>

 <script>

            $("#submit").click(function(){

            	swal("Password changed successfully!");

            });
                 
 
 </script>

</body>
</html>