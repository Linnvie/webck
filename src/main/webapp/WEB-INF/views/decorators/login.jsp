<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Đăng nhập</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- gg icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

  <!-- font awesome icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css" rel="stylesheet" />

  <!-- bootstrap icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <style type="text/css">
	 *[id$=.errors]{
		color:red; font-style: italic;
	}
  </style>
</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
  <header class="header_section" style="background-color: white;">
    <div class="container">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="index.html">
          <span>
            violette
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"> About </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="gallery.html"> Flowers </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="gallery.html"> Occasions </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Collections</a>
              </li>
            </ul>
          </div>
          <div class="quote_btn-container">
            <a class="mr-3"><span class="material-symbols-outlined" style="font-size:22px;">
              search
              </span></a>
            
            <a class="mr-3" href="">
              <span class="material-symbols-outlined">
                shopping_basket
                </span>
            </a>

            <a class="mr-3" href="" >
              <small>Log in</small>
            </a>
            
          </div>
        </div>
      </nav>
    </div>
  </header>
  
  <!-- end header section -->
  </div>

  <!-- start login section -->

  <!-- Section: Design Block -->
<!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-lg-start" style="background-image: url(https://images.unsplash.com/photo-1554494583-c4e1649bfe71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80); background-size: contain;">
    <div class="container">
      <div class="row gx-lg-5 align-items-start">
        <div class="col-lg-7 mb-5 mb-lg-0">
          <h4 class="my-5 display-3 fw-bold ls-tight text-white">
            Fresh flowers <br />
            <span class="">for any special occasion</span>
          </h4>
          
        </div>

        <div class="col-lg-5 mb-5 mb-lg-0">
          <div class="card">
            <div class="card-body py-5 px-md-5">
              <h2 class="mb-5 text-center">Welcome back!</h2>
              ${message}
              <form:form action="dang-nhap" id="formLogin" method="post" modelAttribute="taiKhoanLogin">
                
                
                <!-- Email input -->
                <div class="form-outline mb-4">
                  <form:input path="email" type="email" class="form-control" id="form3Example3" placeholder="Email"/>
						</br>
						<form:errors path="email" cssClass="text-danger"/>
						<p class="text-danger" id="email.errors"></p>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                  <form:input path="matKhau" type="password" class="form-control" id="form3Example4" placeholder="Mật khẩu"/>
						</br>
						<form:errors path="matKhau" cssClass="text-danger"/>
						<p class="text-danger" id="matKhau.errors"></p>
                </div>

                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-around mb-4" style="font-size:15px;">
                  <div>
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33"/>
                  <label class="form-check-label" for="form2Example33">
                    Remember me
                  </label>
                  </div>
                  
                  <div style="color: #144B3C;">Forget password?</div>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-block mb-4 text-white" style="background-color:#144B3C">
                  Sign in
                </button>

                <!-- Register buttons -->
                <div class="text-center">
                  <small>or sign in with:</small><br>
                  <button type="button" class="btn btn-floating mx-1">
                    <i class="fab fa-facebook-f"></i>
                  </button>

                  <button type="button" class="btn btn-floating mx-1">
                    <i class="fab fa-google"></i>
                  </button>

                  <button type="button" class="btn btn-floating mx-1">
                    <i class="fab fa-twitter"></i>
                  </button>

                  
                </div>
                <p class="mt-4 text-center">Don't have an account? <a href="/webbanhoa/quen-mat-khau" class="link-info" style="color:#86A48E">Signup</a></p>
              </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->

  <!-- end login section -->

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      <span id="displayYear"></span> All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </footer>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>

</body>

</html>

















    
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Đăng nhập</title> -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- 	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <style type="text/css"> -->

<!-- /* 	body#LoginForm { */ -->
<!-- /* 	background-image: */ -->
<!-- /* 		url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); */ -->
<!-- /* 	background-repeat: no-repeat; */ -->
<!-- /* 	background-position: center; */ -->
<!-- /* 	background-size: cover; */ -->
<!-- /* 	padding: 10px; */ -->
<!-- /* } */ -->

<!-- /* .form-heading { */ -->
<!-- /* 	color: #fff; */ -->
<!-- /* 	font-size: 23px; */ -->
<!-- /* } */ -->

<!-- /* .panel h2 { */ -->
<!-- /* 	color: #444444; */ -->
<!-- /* 	font-size: 18px; */ -->
<!-- /* 	margin: 0 0 8px 0; */ -->
<!-- /* } */ -->

<!-- /* .panel p { */ -->
<!-- /* 	color: #777777; */ -->
<!-- /* 	font-size: 14px; */ -->
<!-- /* 	margin-bottom: 30px; */ -->
<!-- /* 	line-height: 24px; */ -->
<!-- /* } */ -->

<!-- /* .login-form .form-control { */ -->
<!-- /* 	background: #f7f7f7 none repeat scroll 0 0; */ -->
<!-- /* 	border: 1px solid #d4d4d4; */ -->
<!-- /* 	border-radius: 4px; */ -->
<!-- /* 	font-size: 14px; */ -->
<!-- /* 	height: 50px; */ -->
<!-- /* 	line-height: 50px; */ -->
<!-- /* } */ -->

<!-- /* .main-div { */ -->
<!-- /* 	background: #ffffff none repeat scroll 0 0; */ -->
<!-- /* 	border-radius: 2px; */ -->
<!-- /* 	margin: 10px auto 30px; */ -->
<!-- /* 	max-width: 38%; */ -->
<!-- /* 	padding: 50px 70px 70px 71px; */ -->
<!-- /* } */ -->

<!-- /* .login-form .form-group { */ -->
<!-- /* 	margin-bottom: 10px; */ -->
<!-- /* } */ -->

<!-- /* .login-form { */ -->
<!-- /* 	text-align: center; */ -->
<!-- /* } */ -->

<!-- /* .forgot a { */ -->
<!-- /* 	color: #777777; */ -->
<!-- /* 	font-size: 14px; */ -->
<!-- /* 	text-decoration: underline; */ -->
<!-- /* } */ -->
<!-- /* *[id$=.errors]{ */ -->
<!-- /* color:red; font-style: italic; */ -->
<!-- /* } */ -->

<!-- /* .login-form  .btn.btn-primary { */ -->
<!-- /* 	background: #f0ad4e none repeat scroll 0 0; */ -->
<!-- /* 	border-color: #f0ad4e; */ -->
<!-- /* 	color: #ffffff; */ -->
<!-- /* 	font-size: 14px; */ -->
<!-- /* 	width: 100%; */ -->
<!-- /* 	height: 50px; */ -->
<!-- /* 	line-height: 50px; */ -->
<!-- /* 	padding: 0; */ -->
<!-- /* } */ -->

<!-- /* .forgot { */ -->
<!-- /* 	text-align: left; */ -->
<!-- /* 	margin-bottom: 30px; */ -->
<!-- /* } */ -->

<!-- /* .botto-text { */ -->
<!-- /* 	color: #ffffff; */ -->
<!-- /* 	font-size: 14px; */ -->
<!-- /* 	margin: auto; */ -->
<!-- /* } */ -->

<!-- /* .login-form .btn.btn-primary.reset { */ -->
<!-- /* 	background: #ff9900 none repeat scroll 0 0; */ -->
<!-- /* } */ -->

<!-- /* .back { */ -->
<!-- /* 	text-align: left; */ -->
<!-- /* 	margin-top: 10px; */ -->
<!-- /* } */ -->

<!-- /* .back a { */ -->
<!-- /* 	color: #444444; */ -->
<!-- /* 	font-size: 13px; */ -->
<!-- /* 	text-decoration: none; */ -->
<!-- /* } */ -->
<!-- </style> -->
<!-- </head> -->
<!-- <body id="LoginForm"> -->
<%-- ${message} --%>
<!-- 	<div class="container"> -->
<!-- 		<!-- <h1 class="form-heading">login Form</h1> --> -->
<!-- 		<div class="login-form"> -->
<!-- 			<div class="main-div"> -->
<%-- 				<c:if test="${param.incorrectAccount != null}"> --%>
<!-- 					<div class="alert alert-danger">	 -->
<!-- 						 Sai tên đăng nhập hoặc mật khẩu! -->
<!-- 					</div> -->
<%-- 				</c:if> --%>
<%-- 				<c:if test="${param.accessDenied != null}"> --%>
<!-- 					<div class="alert alert-danger">	 -->
<!-- 						Bạn không có quyền Admin -->
<!-- 					</div> -->
<%-- 				</c:if> --%>
<%-- 				<form:form action="dang-nhap" id="formLogin" method="post" modelAttribute="taiKhoanLogin"> --%>
<!-- 					<div class="form-group"> -->
<%-- 						<form:input path="email" type="text" class="form-control" id="userName" placeholder="Email"/> --%>
<%-- 						<form:errors path="email" cssClass="text-danger"/> --%>
<!-- 						<p class="text-danger" id="email.errors"></p> -->
<!-- 					</div> -->

<!-- 					<div class="form-group"> -->
<%-- 						<form:input path="matKhau" type="password" class="form-control" id="password" placeholder="Mật khẩu"/> --%>
<%-- 						<form:errors path="matKhau" cssClass="text-danger"/> --%>
<!-- 						<p class="text-danger" id="matKhau.errors"></p> -->
<!-- 					</div> -->
<!-- 					<button type="submit" class="btn btn-primary" >Đăng nhập</button> -->
<%-- 				</form:form> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
<!-- </body> -->
<!-- </html> -->