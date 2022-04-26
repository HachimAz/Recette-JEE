   
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


    
<%@page import="User.connection.DBCon" %>
<%@page import="Recette.RecetteModel.Recette" %>
<%@page import="User.model.*" %>

<%-- <%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth == null){
 		response.sendRedirect("Login.jsp");
	}
	
	String nom =  (String)request.getSession().getAttribute("nom");
	
	String role =  (String)request.getSession().getAttribute("role");

%> --%>


<html>




<head>
<title>Admin Panel</title>
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> 
</head>


<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #ff9800">
			<div>
				<h2 class="navbar-brand"> Admin Pannel </h2>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listR"
					class="nav-link">Users</a></li>
			</ul>
		
		    <a class="nav-link" style="text-decoration: none;color: #ffffff9e; right: 0; position: fixed;" 
		    		href="<%=request.getContextPath()%>/user-Logout">Logout</a>
			
<%-- 				        <a href="#"> Hello <%out.print(nom); %></a>
 --%>			
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/newR" class="btn btn-success" >Add
					New User</a>
					
				
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nom</th>
						<th>Prenom</th>
						<th>Email</th>
						<th>Mdp </th>
						<th>Role</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="recettes" items="${listRecette}">

						<tr>
							<td><c:out value="${recette.id}" /></td>
							<td><c:out value="${recette.titre}" /></td>
							<td><c:out value="${recette.ingredient}" /></td>
							<td><c:out value="${recette.etape1}" /></td>
							<td><c:out value="${recette.etape2}" /></td>
							<td><c:out value="${recette.etape3}" /></td>
							<td><a href="editR?id=<c:out value='${recette.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteR?id=<c:out value='${recette.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>