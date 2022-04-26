
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@page import="User.connection.DBCon" %>
<%@page import="User.model.*" %>

<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth == null){
 		response.sendRedirect("Login.jsp");
	}
	
	String nom =  (String)request.getSession().getAttribute("nom");
	
	String role =  (String)request.getSession().getAttribute("role");

%>


<html>
<head>
<title>Admin Pannel</title>
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
				<h2 class="navbar-brand"> Admin Pannel</h2>
			</div>

			<ul class="navbar-nav">
			    <li> <a href="#"> Hello <%out.print(nom); %></a></li>
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
					
					
			</ul>
  <a class="nav-link" style="text-decoration: none;color: #ffffff9e; right: 0; position: fixed;" 
		    		href="user-Logout">Logout</a>			
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${user.nom}' />" class="form-control"
						name="nom" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${user.prenom}' />" class="form-control"
						name="prenom" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Email</label> <input type="email"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						value="<c:out value='${user.mdp}' />" class="form-control"
						name="mdp" required="required">
				</fieldset>
			   <fieldset class="form-group">
					<label>Role</label> <input type="text"
						value="<c:out value='${user.role}' />" class="form-control"
						name="role" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
				
				
				
			</div>
		</div>
	</div>
</body>
</html>
