
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
<%-- 			    <li> <a href="#"> Hello <%out.print(nom); %></a></li>
 --%>				<li><a href="<%=request.getContextPath()%>/list"
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
				<c:if test="${recette != null}">
					<form action="updateR" method="post">
				</c:if>
				<c:if test="${recette == null}">
					<form action="insertR" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${recette != null}">
            			Edit recette
            		</c:if>
						<c:if test="${recette == null}">
            			Add New recette
            		</c:if>
					</h2>
				</caption>

				<c:if test="${recette != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${recette.titre}' />" class="form-control"
						name="nom" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${recette.ingredient}' />" class="form-control"
						name="prenom" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Email</label> <input type="email"
						value="<c:out value='${recette.etape1}' />" class="form-control"
						name="email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						value="<c:out value='${recette.etape2}' />" class="form-control"
						name="mdp" required="required">
				</fieldset>
			   <fieldset class="form-group">
					<label>Role</label> <input type="text"
						value="<c:out value='${recette.etape3}' />" class="form-control"
						name="role" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
				
				
				
			</div>
		</div>
	</div>
</body>
</html>
