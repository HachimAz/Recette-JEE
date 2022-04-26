<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div>
<form action="user-Login" method="post">

<label>Email</label>
<input type="email" name="email">

<label>Password</label>
<input type="password" name="password">
 
<input type="submit" value="Login">
</form>
</div>
</body>
</html> --%>

<%---------------------------------------------------------------------------------------%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="./CSS/Login.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet"> 

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/icon?family=Material+Icons'>

<!-- ----------------------------------------------------------
 -->
 <style>


@charset "ISO-8859-1";

* {
  margin: 0px auto;
  padding: 0px;
  text-align: center;
  font-family: "Lato", sans-serif;
}

.cotn_principal {
  position: absolute;
  width: 100%;
  height: 100%;
  /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cfd8dc+0,607d8b+100,b0bec5+100 */
  background: #aac4bc;
  background: -moz-linear-gradient(
    -45deg,
    #aac4bc 0%,
    #eca8a8 100%,
    #eed5a9 100%
  ); /* FF3.6-15 */
  background: -webkit-linear-gradient(
    -45deg,
    #aac4bc 0%,
    #eca8a8 100%,
    #eed5a9 100%
  ); /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(135deg, #aac4bc 0%, #eca8a8 100%, #eed5a9 100%);
}

.cont_centrar {
  position: relative;
  float: left;
  width: 100%;
}

.cont_login {
  position: relative;
  width: 640px;
  left: 50%;
  margin-left: -320px;
}

.cont_back_info {
  position: relative;
  float: left;
  width: 640px;
  height: 280px;
  overflow: hidden;
  background-color: #fff;
  margin-top: 100px;
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
}

.cont_forms {
  position: absolute;
  overflow: hidden;
  top: 100px;
  left: 0px;
  width: 320px;
  height: 280px;
  background-color: #eee;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_login {
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
  height: 420px;
  top: 20px;
  left: 0px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_sign_up {
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
  height: 420px;
  top: 20px;
  left: 320px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_img_back_grey {
  position: absolute;
  width: 950px;
  top: -80px;
  left: -116px;
}

.cont_img_back_grey > img {
  width: 100%;
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);
  opacity: 0.2;
  animation-name: animar_fondo;
  animation-duration: 20s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

.cont_img_back_ {
  position: absolute;
  width: 950px;
  top: -80px;
  left: -116px;
}

.cont_img_back_ > img {
  width: 100%;
  opacity: 0.3;
  animation-name: animar_fondo;
  animation-duration: 20s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

.cont_forms_active_login > .cont_img_back_ {
  top: 0px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_sign_up > .cont_img_back_ {
  top: 0px;
  left: -435px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_info_log_sign_up {
  position: absolute;
  width: 640px;
  height: 280px;
  top: 100px;
  z-index: 1;
}

.col_md_login {
  position: relative;
  float: left;
  width: 50%;
}

.col_md_login > h2 {
  font-weight: 400;
  margin-top: 70px;
  color: #757575;
}

.col_md_login > p {
  font-weight: 400;
  margin-top: 15px;
  width: 80%;
  color: #37474f;
}

.btn_login {
  background-color: #ff9800;
  border: none;
  padding: 10px;
  width: 200px;
  border-radius: 3px;
  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}

.col_md_sign_up {
  position: relative;
  float: left;
  width: 50%;
}

.cont_ba_opcitiy > h2 {
  font-weight: 400;
  color: #fff;
}

.cont_ba_opcitiy > p {
  font-weight: 400;
  margin-top: 15px;
  color: #fff;
}
/* ----------------------------------
  background text    
  ------------------------------------
   */
.cont_ba_opcitiy {
  position: relative;
  background-color: rgba(187, 168, 170, 0.79);
  width: 80%;
  border-radius: 3px;
  margin-top: 60px;
  padding: 15px 0px;
}

.btn_sign_up {
  background-color: #f44336;
  border: none;
  padding: 10px;
  width: 200px;
  border-radius: 3px;
  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}
.cont_forms_active_sign_up {
  z-index: 2;
}

@-webkit-keyframes animar_fondo {
  from {
    -webkit-transform: scale(1) translate(0px);
    -moz-transform: scale(1) translate(0px);
    -ms-transform: scale(1) translate(0px);
    -o-transform: scale(1) translate(0px);
    transform: scale(1) translate(0px);
  }
  to {
    -webkit-transform: scale(1.5) translate(50px);
    -moz-transform: scale(1.5) translate(50px);
    -ms-transform: scale(1.5) translate(50px);
    -o-transform: scale(1.5) translate(50px);
    transform: scale(1.5) translate(50px);
  }
}
@-o-keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
@-moz-keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
@keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
.cont_form_login {
  position: absolute;
  opacity: 0;
  display: none;
  width: 320px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_login {
  z-index: 2;
}
.cont_forms_active_login > .cont_form_login {
}

.cont_form_sign_up {
  position: absolute;
  width: 320px;
  float: left;
  opacity: 0;
  display: none;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_form_sign_up > input {
  text-align: left;
  padding: 15px 5px;
  margin-left: 10px;
  margin-top: 20px;
  width: 260px;
  border: none;
  color: #757575;
}

.cont_form_sign_up > h2 {
  margin-top: 50px;
  font-weight: 400;
  color: #757575;
}

.cont_form_login > input {
  padding: 15px 5px;
  margin-left: 10px;
  margin-top: 20px;
  width: 260px;
  border: none;
  text-align: left;
  color: #757575;
}

.cont_form_login > h2 {
  margin-top: 110px;
  font-weight: 400;
  color: #757575;
}
.cont_form_login > a,
.cont_form_sign_up > a {
  color: #757575;
  position: relative;
  float: left;
  margin: 10px;
  margin-left: 30px;
}

/* Radio Button */

@import url('https://fonts.googleapis.com/css?family=Lato:400,500,600,700&display=swap');

wrapper{
  display: inline-flex;
  background: #fff;
  height: 100px;
  width: 400px;
  align-items: center;
  justify-content: space-evenly;
  border-radius: 5px;
  padding: 20px 15px;
  box-shadow: 5px 5px 30px rgba(0,0,0,0.2);
}
.wrapper .option{
	display : inline-block;
  background: #fff;
  height: 100%;
  width: 40%;
/*   display: flex;
 */  align-items: center;
  justify-content: space-evenly;
  margin: 10px auto;
  border-radius: 5px;
  cursor: pointer;
  padding: 0 10px;
  border: 2px solid lightgrey;
  transition: all 0.3s ease;
}
/*   .wrapper .option .dot{
  height: 20px;
  width: 20px;
  background: #d9d9d9;
  border-radius: 50%;
  position: relative;
}  */
/* .wrapper .option .dot::before{
  position: absolute;
  content: "";
  top: 4px;
  left: 4px;
  width: 12px;
  height: 12px;
  background: #ff9800;
  border-radius: 50%;
  opacity: 0;
  transform: scale(1.5);
  transition: all 0.3s ease;
} */
input[type="radio"]{
  display: none;
}
#option-1:checked:checked ~ .option-1,
#option-2:checked:checked ~ .option-2{
  border-color: #ff9800b3;
  background: #ff9800;
}
#option-1:checked:checked ~ .option-1 .dot,
#option-2:checked:checked ~ .option-2 .dot{
  background: #fff;
}
#option-1:checked:checked ~ .option-1 .dot::before,
#option-2:checked:checked ~ .option-2 .dot::before{
  opacity: 1;
  transform: scale(1);
}
.wrapper .option span{
  font-size: 20px;
  color: #808080;
}
#option-1:checked:checked ~ .option-1 span,
#option-2:checked:checked ~ .option-2 span{
  color: #fff;
}


</style>
<!-- --------------------------------------------------------------
 -->


</head>
<body>
	<div class="cotn_principal">
		<div class="cont_centrar">

			<div class="cont_login">
				<div class="cont_info_log_sign_up">
					<!-- LOGIN -->
					<div class="col_md_login">
						<div class="cont_ba_opcitiy">

							<h2>Welcome Back</h2>
							<p>To Keep Connected with Us please Login with your personnal Info</p>
							<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
						</div>
					</div>
					<!-- SIGNUP -->
					<div class="col_md_sign_up">
						<div class="cont_ba_opcitiy">
							<h2>Hello Friend!</h2>


							<p>Enter your personnel details and Start journey with us</p>

							<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
								UP</button>
						</div>
					</div>
				</div>


				<div class="cont_back_info">
					<div class="cont_img_back_grey">
						<img
							src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=compress,format&fit=crop&w=1199&h=812&q=80&cs=tinysrgb&crop="
							alt="" />
					</div>

				</div>
				<!-- LOGIN & SIGNUP  -->
				<div class="cont_forms">
					<div class="cont_img_back_">
						<img
							src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=compress,format&fit=crop&w=1199&h=812&q=80&cs=tinysrgb&crop="
							alt="" />
					</div>
					<form action="user-Login" method="post">
						<div class="cont_form_login">
							<a href="#" onclick="ocultar_login_sign_up()"><i
								class="material-icons">&#xE5C4;</i></a>
							<h2>LOGIN</h2>					
							<input type="text" placeholder="Email" name="email" /> <input
								type="password" placeholder="Password" name="password" />

							
				<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
						</div>
					</form>
					<form action="Register" method="post">
						<div class="cont_form_sign_up">
							<a href="#" onclick="ocultar_login_sign_up()"><i
								class="material-icons">&#xE5C4;</i></a>
							<h2>SIGN UP</h2>
							<input type="text" name="nom" placeholder="Nom" required /> <input
								type="text" name="prenom" placeholder="Prenom" required /> <input
								type="email" name="email" placeholder="Email" required /> <input
								type="password" name="mdp" placeholder="Password" required />
							<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
								UP</button>
								<span style="color:red"><%=(request.getAttribute("result") == null) ? "" : request.getAttribute("result")%></span>
					</form>
				</div>
				
			</div>

		</div>
	</div>
	
    
<script>
	function cambiar_login() {
	    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
	  document.querySelector('.cont_form_login').style.display = "block";
	  document.querySelector('.cont_form_sign_up').style.opacity = "0";               
	  
	  setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  
	    
	  setTimeout(function(){    
	  document.querySelector('.cont_form_sign_up').style.display = "none";
	  },200);  
	    }
	  
	  function cambiar_sign_up(at) {
	    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
	    document.querySelector('.cont_form_sign_up').style.display = "block";
	  document.querySelector('.cont_form_login').style.opacity = "0";
	    
	  setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
	  },100);  
	  
	  setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
	  },400);  
	  
	  
	  }    
	  
	  
	  
	  function ocultar_login_sign_up() {
	  
	  document.querySelector('.cont_forms').className = "cont_forms";  
	  document.querySelector('.cont_form_sign_up').style.opacity = "0";               
	  document.querySelector('.cont_form_login').style.opacity = "0"; 
	  
	  setTimeout(function(){
	  document.querySelector('.cont_form_sign_up').style.display = "none";
	  document.querySelector('.cont_form_login').style.display = "none";
	  },500);  
	    
	    }
	
	</script>
	

</body>
</html>