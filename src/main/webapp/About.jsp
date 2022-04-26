<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="./CSS/About.css">

<style>

@charset "ISO-8859-1";
* {
  margin: 0;
  padding: 0;
  font-family: "Open Sans", sans-serif;
  box-sizing: border-box;
}
.logo {
  width: 200px;
  height: 200px;
}
/*---------------------------------HEADER-----------------------------------------*/

#header {
  /* background-color: ; */
  text-align: center;
  padding-bottom: 30px;
  position: relative;
  top: -140px;
}

#header-img {
  padding-top: 50px;
}

#nav-bar {
  padding-top: 15px;
}

#nav-bar a {
  display: inline;
  justify-content: space-around;
  color: rgba(255, 140, 36, 0.9);
  font-family: "Montserrat", sans-serif;
  padding: 0.5rem 1rem;
}

#nav-bar a:hover {
  color: rgba(36, 58, 255, 0.1);
  text-shadow: 1px 1px 1px #918f8f;
}

#figure-intro {
  max-width: 100%;
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 1fr;
  grid-template-areas: "all";
  justify-items: center;
  align-items: start;
  margin: 0 auto;
}

#intro-img {
  grid-area: all;
  max-width: 75%;
  z-index: 2;
  border-radius: 50%;
  margin-top: 50px;
  background-color: pink;
}
/*
       opacity: 0;
       animation: appear-img 2s 1.25s ease-out forwards;
  }
  
  @keyframes appear-img {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
  }*/

#circle-img {
  grid-area: all;
  max-width: 75%;
  z-index: 1;
  opacity: 0.8;
  margin-bottom: -2%;
}
/*opacity: 0;
      animation: appear-circle 1.25s ease-out forwards;
  }
  
  @keyframes appear-circle {
      from {
        opacity: 0;
        transform: scale(0.3);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
  }*/

/*----------------------------HEADER--------------------------------------*/

body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #f1f1f1;
}

.about-section {
  /* background: url(./assets/contact/bg1.jpg) no-repeat left; */
  background-image: url(./Images/img4.jpg) no-repeat left;
  background-size: 55%;
  background-color: #fdfdfd;
  overflow: hidden;
  padding: 100px;
}

.inner-container {
  width: 55%;
  float: right;
  background-color: #fdfdfd;
  padding: 150px;
}

.inner-container h1 {
  margin-bottom: 30px;
  font-size: 30px;
  font-weight: 900;
}

.text {
  font-size: 13px;
  color: #545454;
  line-height: 30px;
  text-align: justify;
  margin-bottom: 40px;
}

.skills {
  display: flex;
  justify-content: space-between;
  font-weight: 700;
  font-size: 13px;
}

@media screen and (max-width: 1200px) {
  .inner-container {
    padding: 80px;
  }
}

@media screen and (max-width: 1000px) {
  .about-section {
    background-size: 100%;
    padding: 100px 40px;
  }
  .inner-container {
    width: 100%;
  }
}

@media screen and (max-width: 600px) {
  .about-section {
    padding: 0;
  }
  .inner-container {
    padding: 60px;
  }
}



</style>



</head>
<% 
if((request.getSession(false).getAttribute("Client")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>  

<body>

    <div class="about-section">
                 <img src="./Images/pngegg.png" class="logo" id="header-img" alt=""> 
    
        <header id="header">
            
 		 	<nav id="nav-bar"> 

 			    <a class="nav-link" href="Home.jsp">Home</a>
                <a class="nav-link" href="#how-works">Recipes</a>
                <a class="nav-link" href="About.jsp">About Us</a>
                <a class="nav-link" href="#">Contact Us</a>       
            </nav>
        </header>
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus velit
                ducimus, enim inventore earum, eligendi nostrum pariatur necessitatibus
                eius dicta a voluptates sit deleniti autem error eos totam nisi neque
                voluptates sit deleniti autem error eos totam nisi neque.
            </p>
            <div class="skills">
                <span>Premium Quality</span>
                <span>Organic food</span>
                <span>Delivery</span>
            </div>
        </div>
    </div>
    
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="User.connection.DBCon" %>
    <%@page import="User.model.*" %>
    
    
 <%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!= null){
		request.setAttribute("auth",auth);
	}
	
	String nom =  (String)request.getSession().getAttribute("nom");
	
	String role =  (String)request.getSession().getAttribute("role");

%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="./CSS/About.css">

</head>

 
<style>

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: rgba(255, 140, 36, 0.7);
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: rgba(255, 140, 36, 0.9);
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
  }
  /*---------------------------------HEADER-----------------------------------------*/

#header {
  /* background-color: ; */
  text-align: center;
  padding-bottom: 30px;
}

#nav-bar {
    padding-top: 15px;
    position: absolute;
    top: 0;
    right: 40%;
    }

#nav-bar a {
    display: inline;
    justify-content: space-around;
    color: white;
    font-family: "Montserrat", sans-serif;
    font-size: 20px;
    text-decoration: none;
    padding-left: 20px;
}

#nav-bar a:hover {
  color: rgba(36, 58, 255, 0.1);
  text-shadow: 1px 1px 1px #918f8f;
}

/*----------------------------HEADER--------------------------------------*/
  
  

</style>
<body>

<div class="about-section">


<!--  		<nav id="nav-bar"> 
 			<a class="nav-link" href="Home.jsp">Home</a>
				<a class="nav-link" href="AllRecette.jsp">Recipes</a>
				<a class="nav-link" href="About.jsp">About Us</a>
               <a class="nav-link" href="user-logout">Logout</a>
               <a class="nav-link" href="user-logout">Logout</a>

		</nav> -->
		
	<%if(auth != null){ %>	
		
		<nav id="nav-bar"> 
  			<a class="nav-link" href="Home.jsp">Home</a>
	    	<a class="nav-link" href="AllRecette.jsp">Recettes</a>
	        <a href="#"> Hello <%out.print(nom); %></a>
			<%if(role.equals("Admin") ){ %>
			<a href="user-list.jsp"> Admin</a>
				<%} %>
			<a class="nav-link" href="About.jsp">About Us</a>
 			<a class="nav-link" href="user-Logout">Logout</a>
		</nav>
		<%}else{ %>
			<% response.sendRedirect("Login.jsp"); %>
	   <%} %>
		
		
		
  <h1>About Us Page</h1>
  <p>Group Of 3 Developers</p>
  <p>Trying to create a dynamic web projects  </p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
<!--       <img src="/w3images/team1.jpg" alt="" style="width:100%">
 -->      <div class="container">
        <h2>Hachim AAZAOUI</h2>
        <p class="title">Web Developper </p>
        <p> Responsible for creating and improving web site pages .</p>
        <p>Hachime@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
<!--       <img src="/w3images/team2.jpg" alt="" style="width:100%">
 -->      <div class="container">
        <h2>Giscard Alex</h2>
        <p class="title">Web Develloper</p>
        <p>Responsible for creating the Conception and the Analyse part </p>
        <p>Giscard@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
<!--       <img src="https://ibb.co/Nt1kTc0" alt="" style="width:100%">
 -->      <div class="container">
        <h2>Son Tung</h2>
        <p class="title">Designer</p>
        <p>Responsible of illustration, photography and layouts </p>
        <p>Tung@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html> 
