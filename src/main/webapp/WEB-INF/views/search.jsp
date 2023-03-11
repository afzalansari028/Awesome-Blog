<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search</title>
<style>
   .container{
   text-align:center;
   }
   #email{
      width:50%;
      height:10%;
      padding:7px;
   }
   #btn{
      width:10%;
      height:10%;
      padding:7px;
   }
   .container a{
   font-size:20px;
   }
  
</style>
</head>
<body>
     <div class="container">
      <form action="do_search">
         <input type="text" id="email" name="email" placeholder="Enter username" required/>
         <input id = "btn" type="submit" value="SEARCH"/>
          <p style="color:red">${message}</p>
          <a href="userprofile" style="color:green">${user}</a>
          
                
       </form>       
      </div> 
</body>
</html>