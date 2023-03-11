<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome</title>

<style><%@include file="/WEB-INF/css/welcome.css"%></style> 
    <script src="https://kit.fontawesome.com/fcb6321455.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="heading">
        <center>
            <p>
                Welcome to Awesome Blog
            </p>         
               <a href="login"> 
                  <input style="cursor:pointer;" type="button" value="Get Started"/>
               </a>
        </center>
    </div>
    <div class="about">
        <center>
            <h1>
                About Us
            </h1>
            <p>We are a team of five members created this blog to connect different people at one platform. Here you can share your thoughts, memories, experiences.
               You can also share your knowledge here. You can motivate people. You can follow people who you like.
            </p>
        </center>
    </div>
    <div class="footer">
        <center>
            <div class="copyright">
                <i class="copyright-child fas fa-copyright"></i>
                <p class="copyright-child">The Awesome Group</p>
            </div>
            <div class="icons">
                <a href="#"><i class="icons-child fab fa-facebook"></i></a>
                <a href="#"><i class="icons-child fab fa-twitter"></i></a>
                <a href="#"><i class="icons-child fab fa-instagram"></i></a>
            </div>
        </center>
    </div>
</body>
</html>