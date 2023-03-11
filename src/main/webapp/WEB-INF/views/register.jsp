<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <style><%@include file="/WEB-INF/css/register.css"%></style>
   
   <script src="https://code.jquery.com/jquery-3.6.0.js" 
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
           crossorigin="anonymous"></script>  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>   
</head>
<body>
     <div class="container">
         <div class="title">Registration!!</div>
           <form action="do_register" method="post">
             <h5 style="color:#ffa64d;text-align:center;">${message}</h5>
              <div class="user-details">
                   <div class="input-box">
                       <span class="details">First Name</span>
                       <input name="firstName" type="text" placeholder="Enter your first name" required/>
                   </div>
                   <div class="input-box">
                       <span class="details">Last Name</span>
                       <input name="lastName" type="text" name="username" placeholder="Enter your last name" required />
                   </div>
                   <div class="input-box">
                       <span class="details">Email</span>
                       <input name="email" type="text" placeholder="Enter your email" required/>
                   </div>
                   <div class="input-box">
                       <span class="details">Phone Number</span>
                       <input name="phoneNumber" type="text" placeholder="Enter your number" required/>
                   </div>
                   <div class="input-box">
                       <span class="details">Date Of Birth</span>
                       <input type="date" id="date" name="Dob" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Password</span>
                       <input type="password" name="password" id="pass" placeholder="Enter your password" pattern=".{8,}" required/>
                       <p style="color:grey;font-size:11px;font-style: italic;">&nbsp; password must be at least 8 characters</p>
                   </div>
                   <div class="input-box">
                       <span class="details">Confirm Password</span>
                       <input type="password" name="confirmPassword" id="cpass" placeholder="Enter your password" onkeyup='check();' required/>
                       <span id='message'></span>
                   </div>
              </div>
              <div class="gender-details">
                  <span class="gender-title">Gender</span>
                  <div class="category">
                     <label for="">
                       <span class="dot"><input type="radio" name="gender" value="male"/></span> 
                       <span class="gender">Male</span> 
                     </label>  
                     <label for="">
                       <span class="dot"><input type="radio" name="gender" value="female"/></span> 
                       <span class="gender">Female</span> 
                     </label>  
                     <label for="">
                       <span class="dot"><input type="radio" name="gender" value="other"/></span> 
                       <span class="gender">Other</span> 
                     </label>  
                 </div>
              </div>
              <div class="button">
                <input type="submit" id="submit" value="Register"/>
            </div>
           </form>
     </div>

     <script>

		     var check = function() {
		    	  if (document.getElementById('pass').value ==
		    	    document.getElementById('cpass').value) {
		    	    document.getElementById('message').style.color = 'green';
		    	    document.getElementById('message').innerHTML = 'confirm password is matched';
		    	  } else {
		    	    document.getElementById('message').style.color = 'red';
		    	    document.getElementById('message').innerHTML = 'confirm password is not matching';
		    	  }
		    	}
     
	          $("#submit").click(function(){
	          
	             console.log("success registeration"); 
	            /*  alert("You have registered successfully"); */
	             swal("You have registered succesfully!!");
	             });
	            	                     
	        }); 
        
  </script>
</body>
</html>