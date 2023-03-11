<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<!-- <link rel="stylesheet" type="text/css" href="/MoneyKing/CSS/style.css"> -->
<style>
body {
	background-image: url("../images/home.jpg");
}

.navbar {
	width: 100%;
	background-color: skyblue;
	overflow: auto;
}

.navbar a {
	float: left;
	text-align: center;
	padding: 12px;
	color: black;
	text-decoration: none;
	font-size: 25px;
	margin-left: 15px;
}

.right {
	float: right;
	text-align: right;
	font-size: 20px;
	margin-right: 30px;
}

.sidebar {
	width: 18%;
	background: skyblue;
	height: 100%;
	position: fixed;
	padding-top: 45px;
}

.sidebar a {
	display: block;
	padding: 10px 25px;
	text-decoration: none;
	color: black;
	font-size: 25px
}

.sidebar a:hover {
	background: white;
}

.content {
	margin-left: 20%;
}

.setting {
	text-align: center;
}

#apply {
	background: green;
	position: absolute;
	margin-top: 130px;
	margin-left: 200px;
	padding: 5px;
	font-size: 25px;
	border-radius: 5px;
	color: white;
	text-decoration: none;
}
</style>
</head>
<body background="<c:url value='Desktop/admin.jpg' />">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- navbar -->
	<div class="navbar">
		<a href="#"> Home</a>

	</div>

	<!-- sidebar -->
	<div class="sidebar">
		<a href="user">List of users</a> <a href="upload">Upload</a> <a
			href="rusers">profile</a> <a href="login">Logout</a>
	</div>

	<div class="content" style="background-image: url(bank.jpg);">

		<h1 style="text-align: center; color: black;">Posts</h1>
		<div class="row">
			<c:forEach items="${listPosts}" var="listPosts">
				<div class="column">
					<p name="id" class="user-details">${listPosts.postId}</p>
					<div class="card">
						<img src="../images/${listPosts.postId}/${listPosts.type}"
							alt=" Avatar " style="width: 50%">
						<div class="right">
							<p class="caption">${listPosts.caption}</p>
							<div class="container2 ">
								<div class="row_likes_comments">
									<div class="column_likes">
										<i class="like fas fa-heart"></i>
										<!--  <a href="<img src="../images/like.png/" width="30" height="20" "/></a>
								<form action="like" method="post">
								<input type="image" src="../images/like.png/" name="submit" width="30" height="20" alt="submit"/> 
								</form>
								-->
										<a href="like/${listPosts.postId}"><input type="image"
											src="../images/like.png/" name="submit" width="30"
											height="20" alt="submit" /></a>
											
										<!-- <a href="<img src="../images/comment.png/" width="30" height="20" "/></a>-->
									</div>
								</div>
								<div>
									<a href="#"> report </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- footer -->
	<!-- <div class="footer">
     this is footer
    </div> -->
</body>
</html>