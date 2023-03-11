<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://platform-api.sharethis.com/js/sharethis.js#property=617636ca9709b0001266b93f&product=inline-follow-buttons"
	async="async"></script>
<title>Welblog-Users</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<style>
html {
	background: url(2.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.header {
	padding: 1px;
	text-align: center;
	background: #3d97ad;
	color: rgb(255, 255, 255);
	font-size: 20px;
	height: 12%;
	width: 100%;
}

.btn:hover {
	background-color: rgb(108, 112, 116);
	;
}

.btn {
	background-color: #3d97ad;
	border: none;
	color: rgb(255, 255, 255);
	padding: 12px 16px;
	font-size: 16px;
	cursor: pointer;
	text-decoration-line: none;
}
</style>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery-color/2.1.2/jquery.color.min.js'></script>
	<script src="followw.js"></script>

	<div class="header">
		<h1>WELBLOG-USERS</h1>
		<a
			href="file:///D:/Trainee%20Softwares-%20CORP-CRP/INTELLECT_SURYA/homepage.html">
			<link rel="stylesheet"
				href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<button class="btn">
				<i class="fa fa-home"></i>HOME
		</a>
		</button>
	</div>


	<!-- Users list -->
	<div class="container text-center" id="tasksDiv">
		<h3>All Users</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>UserName</th>
						<th>First Name</th>
						<th>LastName</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="users" items="${users}">
						<tr>
							<td><h5>${users.firsName}</h5></td>
							<c:out value="$users.lastName}"></c:out>

							 <%-- <td><a href="/delete-user?id=${users.id }"><span
									class="glyphicon glyphicon-trash"></span></a></td>
							<td><a href="/edit-user?id=${users.id }"><span
									class="glyphicon glyphicon-pencil"></span></a></td> --%> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


</body>
</head>
</html>