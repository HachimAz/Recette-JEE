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
<title>Home</title>
<style>

@charset "ISO-8859-1";
body {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

main {
  font-family: "Montserrat", sans-serif;
}

iframe {
  display: block;
  margin: 0 auto;
  margin-top: 3%;
  margin-bottom: 5%;
}

h1,
h2,
h3 {
  font-family: "Josefin Sans", sans-serif;
  text-align: center;
  font-weight: 400;
}

h1 {
  font-weight: 300;
  font-size: 1.5rem;
  line-height: 1.5;
  margin: 0 auto;
}

h2 {
  padding-top: 5%;

  margin: 0 auto 0.25em auto;
}

p {
  text-align: center;
}

/*---------------------------------HEADER-----------------------------------------*/

#header {
  /* background-color: ; */
  text-align: center;
  padding-bottom: 30px;
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

.welcome{
	color: rgba(255, 140, 36, 0.9);
    padding: 0;
    text-align: center;
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

/*----------------------------GALLERY-------------------------------------*/
.row {
  display: flex;
  flex-wrap: wrap;
  padding: 0 4px;
}

.column {
  flex: 50%;
  max-width: 50%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

@media screen and (max-width: 800px) {
  .column {
    flex: 60%;
    max-width: 60%;
  }
}

@media screen and (max-width: 600px) {
  .column {
    flex: 100%;
    max-width: 100%;
  }
}

.gallery {
  vertical-align: middle;
  padding-left: 25%;
  padding-right: 25%;
  padding-top: 2%;
  align-items: center;
}

.special-img {
  height: 198px;
}

/*---------------------------END GALLERY--------------------------*/

/*----------------------------TEXTS-------------------------------*/
.showup {
  text-transform: uppercase;
  letter-spacing: 10px;
}

.quote {
  padding-top: 15%;
  padding-bottom: 5%;
  font-size: 20px;
}

.letter-space {
  letter-spacing: 5px;
}

/*----------------------------END TEXTS-------------------------------*/

/*------------FIRULAS---------------*/

.firula {
  position: relative;
  z-index: 1;
}

.firula::before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0.46rem;
  height: 0.35rem;
  background: rgb(255, 140, 36, 0.6);
  z-index: -1;
}

.firula-header {
  position: relative;
  z-index: 1;
}

.firula-header::before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 1.05rem;
  height: 0.6rem;
  background: rgb(255, 140, 36, 0.6);
  z-index: -1;
}

.firula-newsletter {
  position: relative;
  z-index: 1;
}

.firula-newsletter::before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0.9rem;
  height: 0.6rem;
  background: rgb(255, 140, 36, 0.6);
  z-index: -1;
}

/*----------------CARDS-------------------*/
.card-header {
  background-color: white !important;
  border-style: none !important;
}

.card {
  text-align: center;
  border-style: none !important;
  margin-left: 8%;
  padding-top: 5%;
}

.card-title {
  font-family: "Josefin Sans", sans-serif;
}

.card-text {
  font-family: "Montserrat", sans-serif;
}
.logo {
  width: 200px;
  height: 200px;
}

.card-btn {
  text-align: center;
  align-items: center;
  /* background-color: ; */
  width: 100%;
  margin-top: 30px;
}

.card-btn a {
  width: 45%;
  background-color: rgba(255, 140, 36, 0.9);
  box-shadow: 2px 2px 2px #918f8f;
  color: white;
  margin-bottom: 5%;
}

.card-btn a:hover {
  background-color: rgba(255, 140, 36, 1);
  box-shadow: none;
  color: black;
}

@media screen and (max-width: 48rem) {
  .card-btn a {
    width: 85vw;
    margin-left: 30px;
  }
}

#products {
  width: 41.9%;
  padding-top: 5%;
  display: block;
  margin: 0 auto;
}

/*--------------------------CARDS END---------------*/

#video {
  display: block;
  margin: 0 auto;
  margin-bottom: 5%;
}

#special-h2 {
  padding-left: 21.3%;
  padding-right: 21.3%;
}

@media screen and (max-width: 48rem) {
  iframe {
    width: 100vw;
  }

  #special-h2 h2 {
    width: 90vmin;
    text-align: center;
  }

  #special-h2 {
    width: 100vw;
    padding-left: 5%;
  }
}
/*-------------NEWSLETTER------------------*/

#newsletter {
  background-color: rgba(36, 58, 255, 0.1);
  padding-bottom: 4%;
  text-align: center;
  padding-top: 3%;
}

#newsletter img {
  padding-bottom: 1%;
}

#newsletter h3 {
  background-color: rgba(36, 58, 255, 0);
  width: 22%;
  display: block;
  margin: 0 auto;
}

@media screen and (max-width: 48rem) {
  #newsletter h3 {
    width: 60vw;
  }

  #newsletter {
    width: 100vw;
  }
}

#form {
  padding-right: 25%;
  padding-left: 25%;
  text-align: center;
}

#form input {
  padding-right: 25%;
}

#submit {
  width: 42.9%;
  background-color: rgba(255, 140, 36, 0.9);
  box-shadow: 2px 2px 2px #918f8f;
  color: white;
  margin-bottom: 5%;
}

#submit:hover {
  background-color: rgba(255, 140, 36, 1);
  box-shadow: none;
  color: black;
}

/*------------------FOOTER-----------------*/

footer {
  background-color: rgba(255, 140, 36, 0.1);
}
footer span {
  letter-spacing: 5px;
}

.row {
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  padding-top: 2%;
  width: 100%;
}
@media screen and (min-width: 48rem) {
  .row {
    flex-flow: row nowrap;
    align-items: flex-start;
  }
}

#connect {
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  padding: 0 2.5vw;
  margin-bottom: 0.5rem;
}

#connect h4 {
  letter-spacing: 3px;
}

.icons {
  width: 50%;
  display: flex;
  justify-content: center;
  margin-bottom: 1.5rem;
}

#contact {
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  padding: 0 vw;
  margin-bottom: 3rem;
}

#contact h4 {
  letter-spacing: 3px;
}

#contact > p {
  font-size: 0.75rem;
  margin-bottom: 0;
}

</style>

</head>
<body>
<!-- <ul> -->
<%if(auth != null){ %>

<%-- <li><a href="index.jsp"> Home</a></li>
<li><a href="Myrecette.jsp"> My Recepises</a></li>
<li><a href="user-Logout"> Logout</a></li>
<li><a href="#"> Hello <%out.print(nom); %></a></li> --%>

	<header id="header">
	
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
	</header>

<%-- <%}else{ %>
<li><a href="Login.jsp"> Login</a></li>
<%} %>
<%if(role.equals("Admin") ){ %>
<li><a href="#"> Admin</a></li> --%>
<%-- <%} %> --%>
<!-- </ul> -->

<%-- <% out.print(DBCon.getConnection()); %>
 --%>
 
 
 
	<main>
		<section id="intro">
			<div id="figure-intro">
				<img src="https://66.media.tumblr.com/d0f0c6decb598600dde5ea579dbbb230/c767dedee516b62c-0a/s500x750/715cce1ca18ad7b8aa640e6ac325ad59b00ec0a9.png" id="circle-img">
				<img src="https://66.media.tumblr.com/611e3493e25322211c68afbd39d5468f/6f0cf98811eedc58-0a/s400x600/4e2a2162b813664513f5d0bb602628cd87f218c3.jpg" id="intro-img">
			</div>
			<h1>Thanks to its exotic <br>flavours and fragrances <br><span class="showup firula-header"> Cuisine</span><br>is popular worldwide</h1>
		</section>


		<div class="gallery">
			<div class="row">
				<div class="column">

					<img id="pic1" alt="Asian food" src="https://images.pexels.com/photos/33162/food-restaurant-menu-asia.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

					<img id="pic2" alt="A thai dish with rice" src="https://cdn.pixabay.com/photo/2015/11/04/15/11/food-1022674_960_720.jpg">

					<div class="quote">
						<p>Pull up a chair. <br>Take a taste. <br><span class="firula letter-space">Come join us</span>. <br>Life is so endlessly <br>delicious.”</p>
						<p>- Ruth Reichl</p>
					</div>

					<img class="gallery-img" alt="Someone cooking a thai dish" src="https://images.pexels.com/photos/175753/pexels-photo-175753.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

				</div>

				<div class="column">

					<img class="gallery-img" alt="Fish baked in thai style" src="https://cdn.pixabay.com/photo/2017/02/28/08/55/fish-2105233_960_720.jpg">

					<img  class="gallery-img" src="https://images.pexels.com/photos/1437590/pexels-photo-1437590.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

					<img class="gallery-img" alt="A bot full of fruits" src="https://images.pexels.com/photos/162993/food-thai-spicy-asian-162993.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

					<img class="special-img" src="https://cdn.pixabay.com/photo/2017/12/04/02/49/thai-basil-2996229_960_720.jpg">

					<!--<img class="gallery-img" alt="A table full od food cooked in thai style" src="https://images.pexels.com/photos/5929/food-salad-dinner-eating.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">-->

				</div>
			</div>
		</div>
		


	<section id="products">
		<h2 class="showup firula-header">You can have some</h2>
		<p>Strong aromatic components and a spicy edge</p>
		<hr>
	</section>

	<div class="container" id="card">
			<div class="row">

				<!--First card-->
				<div class="col-lg-4">
					<div class="card">
  						<div class="card-header">
    						<img src="https://img.icons8.com/wired/100/000000/ingredients.png">
  						</div>
  						<div class="card-body">
    						<h5 class="card-title">Premium quality</h5>
    						<p class="card-text">Praesent mauris nunc, eleifend eget convallis sit amet, tempus sed erat. Morbi id aliquet magna.</p>
    						<!--<a href="#" class="btn btn-warning">Go somewhere</a>-->
  						</div>
					</div>
				</div>
				<!--First card end-->

				<!--Second card-->
				<div class="col-lg-4">
					<div class="card">
  						<div class="card-header">
    						<img src="https://img.icons8.com/wired/100/000000/organic-food.png">
  						</div>
  						<div class="card-body">
    						<h5 class="card-title">Organic food</h5>
    						<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a scelerisque purus, porttitor gravida est.</p>
    						<!--<a href="#" class="btn btn-warning">Go somewhere</a>-->
  						</div>
					</div>
				</div>
				<!--Second card end-->

				<!--Third card-->
				<div class="col-lg-4">
					<div class="card">
  						<div class="card-header">
    						<img src="https://img.icons8.com/wired/100/000000/deliver-food.png">
  						</div>
  						<div class="card-body">
    						<h5 class="card-title">Delivery</h5>
    						<p class="card-text">Etiam ornare lorem vel sapien finibus, sit amet pellentesque leo scelerisque. Ut non ullamcorper dui. Aliquam quis nisl urna.</p>
    						<!--<a href="#" class="btn btn-warning">Go somewhere</a>-->
  						</div>
					</div>
				</div>
				<!--Third card end-->
<!-- 				<div class="card-btn">
					<a href="#" class="btn showup">Explore our space</a>
				</div> -->
			</div>
		</div>
		
		
		<div id="video">
			<div id="special-h2"><h2 class="showup firula-header">Understanding Cuisine</h2></div>
			
			<p>- with Chef Einav Gefen ! -</p>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/ArIKPsM1Ubs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/ArIKPsM1Ubs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

		</div>
	
		

		<div id="newsletter">
			<div id="img-newsletter">
				<img src="https://66.media.tumblr.com/ff8263e7e1bc813ab4e8dc2cc7ced9b8/2c87f75a713a6be3-bf/s250x400/15ee1192a7bb37df6de03e208801ab9addf661fa.png">
			</div>
				<h3 class="showup firula-newsletter">Newsletter</h3>
				<p>Subscribe and receive our weekly menu and planned events.</p>
				<form id="form">
					<label for="email">
						<input class="email form-control" type="email" name="email" id="email" placeholder="Enter your email address">
					</label><br>
					<button class="btn" type="submit" id="submit" action="https://www.freecodecamp.com/email-submit">Subscribe</button>
				</form>
		</div>
</main>



		<footer>
			<div class="row">

					<div id="connect">
						<h4>CONNECT</h4>
						<div class="icons">
							<a href="#"><img src="https://img.icons8.com/doodle/30/000000/instagram-new.png"></a>
							<a href="#"><img src="https://img.icons8.com/doodle/38/000000/twitter--v1.png"></a>
							<a href="#"><img src="https://img.icons8.com/color/38/000000/pinterest--v1.png"></a>
						</div>
					</div>


					<div id="contact">
						<h4>CONTACT</h4>
						<p><strong>Adress: Paris</strong> </p>
						<p><strong>Phone: +33000011</strong>: </p>
						<p><strong>Email: Keetchez@gmail.com </strong>: </p>
					</div>
				

			</div>
		</footer>
 
 
 
 </body>
</html>