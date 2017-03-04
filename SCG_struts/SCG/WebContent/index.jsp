<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<!doctype tml PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en-gb" class="no-js">


<!-- Mirrored from www.gescom.com.pe/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 28 Aug 2016 05:32:07 GMT -->
<head>

<title>GESCOM</title>

<meta charset="utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=yes" />

<meta name="keywords" content="soluciones inteligentes" />

<meta name="description" content="Gescom" />

<link rel="shortcut icon" href="images/favicons/favicon.png" />

<link rel="stylesheet" type="text/css" href="css/rev-settings.min.css" />

<link rel="stylesheet" type="text/css"
	href="css/masterslider-style.min.css" />

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="css/icons-styles.min.css" />

<link rel="stylesheet" type="text/css" href="css/animate.min.css" />

<link rel="stylesheet" type="text/css"
	href="css/template-default.min.css" />

<link rel="stylesheet" type="text/css"
	href="css/responsive-devices.min.css" />

<link rel="stylesheet" type="text/css" href="css/masterslider.min.css" />

<link href="css/animate.css" rel="stylesheet" type="text/css" />

<link href="css/bootslider.css" rel="stylesheet" type="text/css" />

<style>
.bs-background img {
	width: 100%;
}

@import url(http://fonts.googleapis.com/css?family=Roboto);
/****** LOGIN MODAL ******/
.loginmodal-container {
	padding: 30px;
	max-width: 350px;
	width: 100% !important;
	background-color: #F7F7F7;
	margin: 0 auto;
	border-radius: 2px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	overflow: hidden;
	font-family: roboto;
}

.loginmodal-container h1 {
	text-align: center;
	font-size: 1.8em;
	font-family: roboto;
}

.loginmodal-container input[type=submit] {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
	height: 44px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 10px;
	-webkit-appearance: none;
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	/* border-radius: 2px; */
	padding: 0 8px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover
	{
	border: 1px solid #b9b9b9;
	border-top: 1px solid #a0a0a0;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.loginmodal {
	text-align: center;
	font-size: 14px;
	font-family: 'Arial', sans-serif;
	font-weight: 700;
	height: 36px;
	padding: 0 8px;
	/* border-radius: 3px; */
	/* -webkit-user-select: none;
			  user-select: none; */
}

.loginmodal-submit {
	/* border: 1px solid #3079ed; */
	border: 0px;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
	background-color: #4d90fe;
	padding: 17px 0px;
	font-family: roboto;
	font-size: 14px;
	width: 100%;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
	/* border: 1px solid #2f5bb7; */
	border: 0px;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background-color: #357ae8;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
	text-decoration: none;
	color: #666;
	font-weight: 400;
	text-align: center;
	display: inline-block;
	opacity: 0.6;
	transition: opacity ease 0.5s;
}

.login-help {
	font-size: 12px;
}

a:hover {
	text-decoration: none;
}

.heading {
	margin: 20px 0 20px 0;
	color: #fff;
	font-size: 56px;
	font-weight: bold;
	text-shadow: -3px 3px 8px rgba(0, 0, 0, 0.75);
}

@media screen and (max-width: 1279px) {
	.heading {
		font-size: 48px;
	}
}

@media screen and (max-width: 979px) {
	.heading {
		font-size: 36px;
	}
}

@media screen and (max-width: 767px) {
	.heading {
		font-size: 28px;
	}
}

@media screen and (max-width: 479px) {
	.heading {
		font-size: 22px;
	}
}

.subheading {
	margin-top: 10px;
	color: #fff;
	font-size: 48px;
	font-weight: 300;
	text-shadow: -3px 3px 8px rgba(0, 0, 0, 0.75);
}

@media screen and (max-width: 1279px) {
	.subheading {
		font-size: 36px;
	}
}

@media screen and (max-width: 979px) {
	.subheading {
		font-size: 30px;
	}
}

@media screen and (max-width: 767px) {
	.subheading {
		font-size: 24px;
	}
}

@media screen and (max-width: 479px) {
	.subheading {
		font-size: 20px;
	}
}

.progress-bar {
	background-color: #96BC11;
}

#parallax1 {
	background-image: url(img/parallax-slide-1.html);
}

#parallax2 {
	background-image: url(img/parallax-slide-2.html);
}
</style>

<!-- JS -->

<script>
	window.jQuery
			|| document.write('<script  src="js/jquery.min.js">\x3C/script>')
</script>

</head>

<body class="" data-spy="scroll" data-target="#main-menu">

	<div id="preloader">

		<div id="status"></div>

	</div>

	<!-- end preloader -->

	<div id="page-wrapper">

		<section id="home">

		<div class="bootslider" id="bootslider">
			<!-- Bootslider Loader -->
			<div class="bs-loader">
				<img src="img/loader.html" width="31" height="31" alt="Loading.."
					id="loader" />
			</div>
			<!-- /Bootslider Loader -->

			<!-- Bootslider Container -->
			<div class="bs-container" style="margin-top: -3px;">

				<!-- Bootslider Slide -->
				<div class="bs-slide active" data-animate-in="puffIn"
					data-animate-out="puffIn">
					<div class="bs-foreground">
						<div class="container">
							<!-- <div class="row">
		                                <div class="col-md-12 bs-vertical-center">
		                                    <div data-animate-in="fadeInLeft" data-animate-out="fadeOutUpBig" data-delay="1600">
		                                        <h1 class="heading" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="800">
		                                       		SGR
		                                        </h1>
		                                        <h2 class="subheading text-white" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="1200">
		                                            GESTIONA EL REPARTRO 
		                                        </h2>
		                                        <h2 class="subheading text-white" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="1200">
		                                            DE TUS RECIBOS
		                                        </h2>
		                                    </div>
		                                </div>
		                            </div> -->
						</div>
					</div>
					<div class="bs-background">
						<div>
							<!--  <img src="images/slider/slide-4-layer-1.png" class="bs-layer"
		                             data-animate-in="fadeInRightBig" data-animate-out="fadeOutRightBig" data-delay="400"
		                             data-width="845" data-height="649" data-right="0" data-bottom="0"/> -->
							<img src="images/slider/slide-4.jpg" alt="" />

						</div>

					</div>
				</div>
				<!-- /Bootslider Slide -->

				<!-- Bootslider Slide -->
				<div class="bs-slide" data-animate-in="puffIn"
					data-animate-out="puffIn">
					<div class="bs-foreground">
						<div class="container">
							<!--  <div class="row" data-animate-in="fadeInLeftBig" data-delay="1000" data-animate-out="fadeOutDown">
		                                <div class="col-md-12">
		                                    <h1 class="heading">BOOTSLIDER</h1>
		                                    <p class="subheading text-white">SIMPLY LOVES BOOTSTRAP</p>
		                                    <p>
		                                        <a class="btn btn-primary" href="http://codecanyon.net/item/bootslider-responsive-bootstrap-css3-slider/6477433?ref=AlexGrozav">BUY NOW</a>
		                                    </p>
		                                </div>
		                            </div> -->
						</div>
					</div>
					<div class="bs-background">
						<!-- <img src="images/slider/slide-1-layer-1.png" 
		                             data-animate-in="fadeInUpBig" data-animate-out="fadeLeftDownBig" class="bs-layer" 
		                             data-width="683" data-height="302" data-left="342" data-bottom="100"/>
		                        <img src="images/slider/slide-1-layer-2.png" 
		                             data-animate-in="fadeInLeftBig" data-animate-out="fadeInDownBig" class="bs-layer" 
		                             data-width="442" data-height="273" data-left="382" data-bottom="0" data-delay="1200"/> -->
						<img src="images/slider/slide-1.jpg" alt="" />
					</div>
				</div>
				<!-- /Bootslider Slide -->

				<!-- Bootslider Slide -->
				<div class="bs-slide" data-animate-in="puffIn"
					data-animate-out="puffIn">
					<div class="bs-foreground">
						<div class="container">
							<!-- <div class="row">
		                                <div class="col-md-12 text-center">
		                                    <div data-animate-in="tada" data-animate-out="fadeOutUpBig" data-delay="1000">
		                                        <h1 class="heading">
		                                            BOOTSLIDER
		                                        </h1>
		                                        <h2 class="subheading text-white">
		                                            ABSOLUTELY RESPONSIVE
		                                        </h2>
		                                    </div>
		                                </div>
		                            </div> -->
						</div>
					</div>
					<div class="bs-background">
						<!-- <img src="images/slider/slide-2-layer-4.png" class="bs-layer"
		                             data-animate-in="fadeInDown" data-animate-out="fadeOutUpBig" data-delay="2000"
		                             data-width="775" data-height="473" data-right="125" data-top="243"/>
		                        <img src="images/slider/slide-2-layer-1.png" class="bs-layer"
		                             data-animate-in="fadeInDownBig" data-animate-out="fadeOutUpBig" data-delay="800"
		                             data-width="922" data-height="532" data-left="237" data-top="174"/>
		                        <img src="images/slider/slide-2-layer-2.png" class="bs-layer"
		                             data-animate-in="fadeInRightBig" data-animate-out="fadeOutUpBig" data-delay="1200"
		                             data-width="208" data-height="410" data-right="322" data-top="276"/>
		                        <img src="images/slider/slide-2-layer-3.png" class="bs-layer"
		                             data-animate-in="fadeInLeftBig" data-animate-out="fadeOutUpBig" data-delay="1600"
		                             data-width="423" data-height="512" data-left="183" data-top="203"/> -->
						<img src="images/slider/slide-2.jpg" alt="" />
					</div>
				</div>
				<!-- /Bootslider Slide -->

				<!-- Bootslider Slide -->
				<div class="bs-slide" data-animate-in="puffIn"
					data-animate-out="puffIn">
					<div class="bs-foreground">
						<div class="container">
							<div class="row">
								<!-- <div class="col-md-12 bs-vertical-center">
		                                    <div 
		                                        data-animate-in="fadeInLeft" data-animate-out="fadeOutUpBig" data-delay="1600">
		                                        <h1 class="heading" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="800">
		                                            SGR
		                                        </h1><br>
		                                        <h2 class="subheading text-white" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="1200">
		                                            GESTIONA EL REPARTO 
		                                        </h2>
		                                        <h2 class="subheading text-white" data-animate-in="fadeInLeftBig" data-animate-out="fadeOutLeftBig" data-delay="1200">
		                                            DE TUS RECIBOS
		                                        </h2>
		                                    </div>
		                                </div> -->
							</div>
						</div>
					</div>
					<div class="bs-background">
						<!--  <img src="images/slider/slide-4-layer-4.png" class="bs-layer"
		                             data-animate-in="slideUpReturn" data-animate-out="slideUpReturn" data-delay="400"
		                             data-width="393" data-height="617" data-left="1040" data-bottom="75" />

		                        <img src="images/slider/slide-3-layer-3.png" class="bs-layer"
		                             data-animate-in="slideUpReturn" data-animate-out="slideUpReturn" data-delay="1200"
		                             data-width="393" data-height="617" data-left="940" data-bottom="50"  />

		                        <img src="images/slider/slide-3-layer-2.png" class="bs-layer"
		                             data-animate-in="slideUpReturn" data-animate-out="slideUpReturn" data-delay="2000"
		                             data-width="393" data-height="617" data-left="840" data-bottom="25"  />

		                        <img src="images/slider/slide-3-layer-1.png" class="bs-layer"
		                             data-animate-in="slideUpReturn" data-animate-out="slideUpReturn" data-delay="2800"
		                             data-width="393" data-height="617" data-left="740" data-bottom="0"  /> -->

						<img src="images/slider/slide-3.jpg" alt="" />
					</div>
				</div>
				<!-- /Bootslider Slide -->

			</div>

			<!-- /Bootslider Container -->

			<!-- Bootslider Progress -->
			<div class="bs-progress progress">
				<div class="progress-bar progress-primary"></div>
			</div>
			<!-- /Bootslider Progress -->

			<!-- Bootslider Thumbnails -->
			<div class="bs-thumbnails text-center text-alizarin">
				<ul class=""></ul>
			</div>
			<!-- /Bootslider Thumbnails -->

			<!-- Bootslider Pagination -->
			<!-- <div class="bs-pagination text-center text-alizarin">
		                <ul class="pagination"></ul>
		            </div> -->
			<!-- /Bootslider Pagination -->

			<!-- Bootslider Controls -->
			<!--  <div class="bs-controls text-center">
		                <div class="btn-group">
		                    <a href="javascript:void(0);" class="btn btn-primary bs-prev">&lt;</a>
		                    <a href="javascript:void(0);" class="btn btn-primary bs-next">&gt;</a>
		                </div>
		            </div> -->
			<!-- /Bootslider Controls -->

		</div>


		<!-- 	
			    <div id="slideshow">

					<div class="tp-banner-container">

						<div class="tp-banner" >

							<ul>

								<li data-transition="fade" data-slotamount="5" data-masterspeed="700" >

								

									<img src="images/slide2.jpg" alt="slidebg2" width="1920" height="1080" />


									<div class="tp-caption caption1"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<div>

											<img src="images/logo6.png" alt="" class="img-responsive logo" width="200" height="60" />

										</div>

										<br>

										<br>

									</div>

								

									<div class="tp-caption caption3 center"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<h2 class="oswald">MEJORAMOS TUS PROCESOS <br> IMPLEMENTANDO SOLUCIONES <br>BASADAS EN TECNOLOGÍA</h2>

									</div>

							

									<div class="tp-caption caption4"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<br>

										<br>

										<br>

										<br>

										<a href="#nosotros" class="slider-btn">SOBRE NOSOTROS</a>

									</div>

								</li>

								<li data-transition="fade" data-slotamount="5" data-masterspeed="700" >

									

									<img src="images/process-bg2.jpg" alt="slidebg2" width="1920" height="1080" />

									

									<div class="tp-caption caption1"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<div>

											<img src="images/logo4.png" alt="" class="img-responsive logo" width="50" height="60" />

										</div>

										<br>

										<br>

									</div>

								

									<div class="tp-caption caption3 center"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<h2 class="oswald"> INNOVAMOS Y GENERAMOS<br> RESULTADOS EFICIENTES <br>PARA TU EMPRESA </h2>

									</div>

							

									<div class="tp-caption caption4"

										data-x="center"

										data-hoffset="0"

										data-speed="1000"

										data-start="500"

										data-easing="Back.easeInOut"

										data-endspeed="300">

										<br>

										<br>

										<br>

										<br>

										<a href="#nosotros" class="slider-btn">SOBRE NOSOTROS</a>

									</div>

								</li>


							</ul>

						</div>

					</div>

				</div>
 			--> </section>


		<header id="header" class="header-fixed">

		<div class="container">

			<div class="row">

				<div class="col-sm-12">

					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#main-menu">

						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>

					</button>

					<div class="logo-nav">

						<a href="#"> <img class="logo"
							style="margin-top: 0px; width: 150px !important;"
							src="images/logo4.png" alt="" />

						</a>

					</div>
					<!-- end logo-nav -->

					<div class="clearfix hidden-lg"></div>

					<nav id="main-menu" class="collapse">

					<ul class="nav">

						<li class="active"><a href="#home">Home</a></li>

						<li><a href="#nosotros">Nosotros</a></li>
						<!--
									<li>

										<a href="#servicios">Servicios</a>

									</li>
									-->

						<!-- <li class="outsourcing has-child" >

										<a href="#procesos">Consultoría</a>
										
										<ul>
											<li>
												<a  id="modelado" href="#procesos" role="tab" data-toggle="tab" >Modelado de procesos</a>
											</li>

											<li>
												<a id="inteligencia" href="#procesos" role="tab" data-toggle="tab" >Inteligencia de negocios</a>
											</li>
										</ul>

									</li> -->


						<li class="outsourcing has-child"><a
							href="javascript:void(0)">Outsourcing</a>

							<ul>
								<li><a id="modelado" href="#procesos" role="tab"
									data-toggle="tab">Outsourcing de procesos de conocimiento</a></li>

								<li><a id="inteligencia" href="#soluciones" role="tab"
									data-toggle="tab">Outsourcing de procesos de negocio</a></li>

								<li><a id="inteligencia" href="#desarrollo" role="tab"
									data-toggle="tab">Outsourcing tecnológico</a></li>
							</ul></li>


						<!-- <li class="outsourcing has-child">

										<a href="#soluciones">Outsourcing</a>

										<ul>
											<li>
												<a  id="facturacion" href="#soluciones" role="tab" data-toggle="tab">FACTURACIÓN IN-SITU</a>
											</li>

											<li>
												<a  id="saneamiento"  href="#soluciones" role="tab" data-toggle="tab">SANEAMIENTO COMERCIAL</a>
											</li>
											<li>
												<a  id="avtividades" href="#soluciones" role="tab" data-toggle="tab">ACTIVIDADES COMERCIALES</a>
											</li>

											<li>
												<a  id="lectura" href="#soluciones" role="tab" data-toggle="tab">LECTURA DE MEDIDORES</a>
											</li>
											<li>
												<a  id="reparto" href="#soluciones" role="tab" data-toggle="tab">REPARTO DE RECIBOS</a>
											</li>

											<li>
												<a id="fise" href="#soluciones" role="tab" data-toggle="tab">FISE</a>
											</li> 
										</ul>
									</li>

									<li class="desarrollo has-child">

										<a href="#desarrollo ">Desarrollo</a>

										<ul>
											<li>
												<a  id="web2" href="#desarrollo" role="tab" data-toggle="tab">WEB</a>
											</li>

											<li>
												<a  id="movil2" href="#desarrollo" role="tab" data-toggle="tab">MÓVIL</a>
											</li>
											<li>
												<a  id="business" href="#desarrollo" role="tab" data-toggle="tab" >BUSINESS INTELLIGENCE</a>
											</li>

											<li>
												<a  id="mineria" href="#desarrollo" role="tab" data-toggle="tab">MINERÍA DE DATOS</a>
											</li>
											<li>
												<a  id="arquitectura" href="#desarrollo" role="tab" data-toggle="tab">ARQUITECTURA DE SOFTWARE</a>
											</li>

											<li>
												<a  id="reingenieria" href="#desarrollo" role="tab" data-toggle="tab">REINGENIERÍA</a>
											</li>
										</ul>

									</li> -->

						<li class=""><a href="#solucinoesti">soluciones</a></li>

						<li><a href="#clientes">Clientes</a></li>

						<li><a href="#contact">Contáctenos</a></li>

						<li class="active"><a href="#" data-toggle="modal"
							data-target="#login-modal">Login</a></li>
					</ul>

					</nav>
					<!-- end main-menu -->

				</div>

			</div>

		</div>

		</header>
		<!-- end header -->



		<div id="content">



			<section id="nosotros" class="ptop100 pbottom70"
				style="background-color:#fff; ">

			<div class="container">

				<div class="row mbottom100">

					<div class="col-sm-12">

						<div class="center ">

							<h2 class="section-title oswald wow fadeInUp"
								data-wow-delay="0.5s">Nosotros</h2>

						</div>

					</div>

				</div>

				<div class="row mbottom70">



					<div class="col-sm-4">

						<div class="about-box wow fadeInUp" data-wow-delay="1s">

							<span class="fa fa-crosshairs  about-span animate"></span>

							<h3>MISIÓn</h3>
							<p>Trabajamos para proporcionar soluciones eficientes y
								eficaces, con un equipo de profesionales competitivo, que
								integrando conocimientos, experiencias y creatividad, nos
								permite desarrollar innovaciones para quienes han confiado en
								nosotros.</p>
							<br> <br> <br>

						</div>

					</div>


					<div class="col-sm-4">

						<div class="about-box last wow fadeInUp" data-wow-delay="1.4s">

							<span class="icon-briefcase about-span animate"></span>

							<h3>FILOSOFÍA</h3>

							<p>Buscamos proponer soluciones distintas e innovadoras,
								esforzándonos día a día en utilizar los problemas de cada
								cliente como una oportunidad para dar lo mejor de nosotros,
								captando sus necesidades y brindándoles un servicio de gran
								valor, que a la vez nos permita crecer como empresa; siendo
								además el trabajo en equipo nuestra mayor fortaleza para
								concretar nuestras metas.</p>

						</div>

					</div>

					<div class="col-sm-4">

						<div class="about-box wow fadeInUp" data-wow-delay="1.2s">

							<span class="icon-compass2 about-span animate"></span>

							<h3>VISIÓN</h3>

							<p>Ser una empresa referente a nivel nacional, en la
								optimización de procesos de negocio aplicando soluciones
								tecnológicas innovadoras, bajo un enfoque de mejora continua y
								colaboradores comprometidos con la satisfacción de nuestros
								clientes.</p>
							<br> <br> <br>

						</div>

					</div>

				</div>

			</div>

			</section>
			<!-- about us section -->

			<!--
				<section id="servicios" class="ptop100 pbottom70" style="background-color:#fff;">

					<div class="container mbottom50">

						<div class="row mbottom50 wow fadeInUp" data-wow-delay="0.5s">

							<div class="col-sm-12">

								<div class="center">

									<br>
									<h2 class="section-title oswald wow fadeInUp" data-wow-delay="0.5s">SERVICIOS</h2>

									<h2 class=" subtitle oswald">Generamos innovación, y resultados rápidos ante los cambios y la competencia</h2>

								</div>

							</div>

						</div>


						<div class="row mbottom50">

							<div class="col-sm-5 col-md-5 col-lg-6 col-xs-12 wow fadeInUp" data-wow-delay="1s">

								<div class="ms-laptop-template">

									<div class="ms-laptop-cont">

										<img src="images/masterslider/laptop.png" alt="" class="ms-laptop-bg" width="645" height="96%" />

										<div class="ms-lt-slider-cont">

											

											<div class="master-slider ms-skin-default" id="masterslider">


												<div class="ms-slide">

													<img src="images/laptop-slider/laptop2.png" data-src="images/laptop-slider/laptop2.png" alt="" width="423" height="282"/>         

												</div>

												<div class="ms-slide">

													<img src="images/laptop-slider/laptop3.png" data-src="images/laptop-slider/laptop3.png" alt="" width="423" height="282"/>

												</div>

												<div class="ms-slide">

													<img src="images/laptop-slider/laptop4.png" data-src="images/laptop-slider/laptop4.png" alt="" width="423" height="282"/>

												</div>               

											</div>

										

										</div>

									</div>

								</div>  

							</div>

							<div class="col-sm-2 col-md-2 col-lg-2 wow fadeInLeft" data-wow-delay="1s">

								<img src="images/bullet-line.svg" alt="" class="img-responsive rounded-svg" />

							</div>

							<div class="col-sm-5 col-md-5 col-lg-4 col-xs-12">

								<div class="featured-text">

									<div class="first-text wow fadeInUp" data-wow-delay="1s">

										<span class="tab-bullet-active"></span> 

										<h3 class="oswald uppercase">

											<a href="#procesos" class="dezure-btn animate wow fadeInLeft animated" data-wow-delay="0.5s" style="visibility: visible; -webkit-animation: fadeInLeft 0.5s; padding:10px !important;">CONSULTORÍA</a>

										</h3>

										<p>Nulla pellentesque tortor donec vitae massa uspendisse potent</p>

									</div>

									<div class="second-text wow fadeInUp" data-wow-delay="1.2s">

										<span class="tab-bullet-active"></span>

										<h3 class="oswald uppercase">

											<a href="#soluciones" class="dezure-btn animate wow fadeInLeft animated" data-wow-delay="0.5s" style="visibility: visible; -webkit-animation: fadeInLeft 0.5s; padding:10px !important;">OUTSOURCING</a>

										</h3>

										<p>Sed a lorem volutpat purus scelerisque dapibus. Integer adipiscing turpis</p>

									</div>

									<div class="fourth-text wow fadeInUp" data-wow-delay="1.4s">

										<span class="tab-bullet-active"></span>

										<h3 class="oswald uppercase">

											<a href="#desarrollo" class="dezure-btn animate wow fadeInLeft animated" data-wow-delay="0.5s" style="visibility: visible; -webkit-animation: fadeInLeft 0.5s; padding:10px !important;">DESARROLLO DE SOFTWARE</a>

										</h3>

										<p>Sed a lorem volutpat purus scelerisque dapibus. Integer adipiscing turpis</p>

									</div>
									
								</div>

							</div>

						</div>

					</div>

				</section>
-->

			<section id="procesos" class="ptop20 pbottom70">

			<div id="process" class="process  processbg ptop70 pbottom50">

				<div class="container">

					<div class="row ">

						<div class="col-sm-12">

							<div class="center">

								<h2 class="big-title white wow fadeInUp" data-wow-delay="0.5s">OUTSOURCING
									DE PROCESOS DE CONOCIMIENTO</h2>

								<!-- <div class="thin-line-white wow fadeInUp" data-wow-delay="0.8s"></div> -->

							</div>

						</div>

					</div>

					<div class="row">

						<div class=" col-sm-12">

							<!-- Nav tabs -->
							<div class="fluid-content center " style="text-align:;">

								<ul class="nav nav-tabs mbottom20 wow fadeInUp"
									data-wow-delay="0.5s" role="tablist" style="display: block;">

									<li id="" class=" delete"><a href="#" role="tab"
										data-toggle="tab"> <b></b>

									</a></li>

									<li id="" class="delete "><a href="#" role="tab"
										data-toggle="tab"> <b></b>

									</a></li>

									<li id="1" class="active"><a href="#discuss" role="tab"
										data-toggle="tab">

											<div class="mbottom25">

												<span class="tab-bullet"></span>

											</div>

											<div class="mbottom10">

												<span class="tab-icon fa fa-angle-double-right"></span>

											</div> <b>MODELADO DE PROCESOS</b>

									</a></li>

									<li id="2" class=""><a href="#planning" role="tab"
										data-toggle="tab">

											<div class="mbottom25">

												<span class="tab-bullet last"></span>

											</div>

											<div class="mbottom10">

												<span class="tab-icon fa  fa-puzzle-piece"></span>

											</div> <b>INTELIGENCIA DE NEGOCIOS</b>

									</a></li>

								</ul>

							</div>

							<!-- Tab panes -->

							<div class="tab-content wow fadeInUp" data-wow-delay="0.5s">

								<div class="tab-pane fade in active" id="discuss">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/consultoria-modelado-procesos.png" alt=""
													class="img-responsive" width="300" height="300" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">MODELADO DE
												PROCESOS</h3>

											<p>Relacionado a la compañía y la planificación del
												modelo de negocio de acuerdo a los servicios que brindará a
												los clientes.</p>

											<p>Haciendo uso de diagramas con los cuales se obtiene
												información preliminar de la amplitud de los procesos, cuya
												representación visual facilita la descomposición de procesos
												de trabajo para hacer distinción entre aquellas que aportan
												valor añadido, de aquellas que no lo hacen.</p>

											<a href="modal-modeladoDeProcesos.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente1" href="#planning" role="tab"
												data-toggle="tab" class="btn-transparent animate">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="planning">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/consultoria-inteligencia.png" alt=""
													class="img-responsive" width="415" height="410" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">INTELIGENCIA DE
												NEGOCIOS</h3>

											<p>Es el conjunto de estrategias y aspectos enfocados a
												la administración y creación de conocimiento sobre el medio
												a través del análisis de los datos existentes en una
												organización para facilitar la toma de decisiones a nivel
												operativo, táctico y estratégico.</p>
											<p>También existe la creación de escenarios con respecto
												a las decisiones a tomar, hacer pronósticos, generación de
												reportes globales o por secciones.</p>


											<a href="modal-inteligenciaDeNegocios.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente2" href="#discuss" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>
			<!-- end process --> </section>
			<!-- about us section -->


			<section id="soluciones" class="ptop20 pbottom70">

			<div id="outsour" class="process1 ptop70 pbottom50">

				<div class="container">

					<div class="row ">

						<div class="col-sm-12">

							<div class="center">

								<h2 class="big-title white wow fadeInUp" data-wow-delay="0.5s">OUTSOURCING
									DE PROCESOS DE NEGOCIO</h2>

								<!-- <div class="thin-line-white wow fadeInUp" data-wow-delay="0.8s"></div> -->

							</div>

						</div>

					</div>

					<div class="row">

						<div class="col-sm-12">

							<!-- Nav tabs -->

							<div class="col-lg-6  col-sm-12"
								style="width: 50px; color: trasparent; width: 10%;">----</div>

							<!-- <div class="col-sm-12 col-md-12 col-md-offset-1"> -->

							<ul class="nav nav-tabs mbottom70 wow fadeInUp"
								data-wow-delay="0.5s" role="tablist">

								<li id="6" class="active "><a href="#etr" role="tab"
									data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-columns"></span>

										</div> <b>Facturación in-situ </b>

								</a></li>

								<li id="7"><a href="#insitu" role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class=" tab-icon fa fa-tasks "></span>

										</div> <b>ACTIVIDADES COMERCIALES </b>

								</a></li>

								<li id="8"><a href="#repartoo" role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-list-alt"></span>

										</div> <b>REPARTO DE RECIBOS</b>

								</a></li>

								<li id="9"><a href="#online" role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-bar-chart "></span>

										</div> <b>LECTURA DE MEDIDORES</b>

								</a></li>

								<li id="10"><a href="#inspeccines" role="tab"
									data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet last "></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-trello"></span>

										</div> <b> SANEAMIENTO COMERCIAL</b>

								</a></li>

								<!--<li id="11" >

												<a href="#censo" role="tab" data-toggle="tab">

													<div class="mbottom25">
														<span class="tab-bullet last"></span>
													</div>

													<div class="mbottom10">

														<span class="tab-icon fa fa-fire "></span>

													</div>

													<b>FISE </b>

												</a>

											</li> -->


							</ul>
							<!-- </div> -->

							<!-- Tab panes -->

							<div class="tab-content wow fadeInUp" data-wow-delay="0.5s">

								<div class="tab-pane fade in active" id="etr">

									<div class="row">

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">Facturación
												in-situ</h3>

											<p>La Facturación In-Situ es soportada por un sistema que
												integra dispositivos e impresoras móviles, permitiendo al
												operador imprimir el documento de cobro en el predio. De
												este modo se puede facturar, imprimir y entregar la factura
												en el instante en que se toma la lectura del medidor.</p>

											<p>Se busca asegurar que cada cliente reciba su factura y
												pueda comprobar el valor de la misma al momento de la
												medición, asímismo reduce las visitas al domicilio del
												usuario y los retrasos en la entrega de recibos.</p>

											<a href="modal-facturacion.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente6" href="#insitu" role="tab"
												data-toggle="tab" class="btn-transparent animate">Siguiente
												<i class="icon-angle-right"></i>
											</a>

										</div>

										<div class="col-sm-5">

											<div class="desktop-img center">

												<img src="images/outsourcing-facturacionInsitu.png" alt=""
													class="img-responsive" width="390" height="410" />

											</div>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="insitu">

									<div class="row">


										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>




											<h3 class="big-title white uppercase">ACTIVIDADES
												COMERCIALES</h3>

											<p>Las Actividades Comerciales son el proceso en el que
												se gestiona el servicio de atención al cliente en
												actividades como: Reclamos, Alta de servicio, Emergencias,
												Cortes y Reconexiones, entre otros; es decir todo el soporte
												al cliente realizado por el personal técnico y operativo de
												la contratista.</p>

											<p>Tenemos como productos dentro de este punto a dos
												soluciones web y móviles denominadas: SGAC (Sistema de
												Gestión de Actividades Comerciales) y SGCR (Sistema de
												Gestión para Cortes y Reconexiones).</p>

											<a href="modal-actividadesComerciales.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente7" href="#repartoo" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/outsourcing-actividadesComerciales.png"
													alt="" class="img-responsive" width="380" height="380" />

											</div>

										</div>


									</div>

								</div>

								<div class="tab-pane fade" id="repartoo">

									<div class="row">



										<div class="col-sm-7">


											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">REPARTO DE RECIBOS</h3>

											<p>El Reparto de Recibos es un proceso que consiste en la
												distribución de las facturas a los predios, las cuales
												indican el valor que será cobrado en la cuenta mensual por
												el servicio eléctrico brindado.</p>

											<p>Se ha desarrollado una solución para el proceso
												correspondiente denominada SGR (Sistema de Gestión de
												Reparto), aplicando soluciones basadas en tecnología web y
												móvil lo que se traduce como una reducción de costos
												operativos y administrativos para nuestros clientes.</p>

											<a href="modal-repartoDeRecibos.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente8" href="#online" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

										<div class="col-sm-5">

											<div class="desktop-img">


												<img src="images/outsourcing-saneamientoComercial.png"
													alt="" class="img-responsive" width="415" height="410" />
											</div>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="online">

									<div class="row">

										<div class="col-sm-7">
											<span class="tab-bullet-active"></span>
											<h3 class="big-title white uppercase">LECTURA DE
												MEDIDORES</h3>


											<p>En Gescom hemos desarrollado una solución para el
												proceso correspondiente a la Lectura de Medidores,
												denominada SGC (Sistema de Gestión de Consumo), aplicando
												soluciones basadas en tecnología web y móvil lo que se
												traduce como una reducción de costos operativos y
												administrativos para nuestros clientes.</p>

											<p>&nbsp;</p>

											<a href="modal-lecturaDeMedidores.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente9" href="#inspeccines" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>
											</a>

										</div>



										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/outsourcing-lecturaDeMedidores.png" alt=""
													class="img-responsive" width="350" height="410" />

											</div>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="inspeccines">

									<div class="row">

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>
											<h3 class="big-title white uppercase">SANEAMIENTO
												COMERCIAL</h3>

											<p>El Saneamiento Comercial consiste en el
												empadronamiento mediante el que se obtiene y actualiza la
												información de los suministros con la finalidad de registrar
												los datos que se modificaron en el tiempo para tener un
												control de los cambios y actualizaciones.</p>
											<p>En Gescom atendemos el proceso de saneamiento
												comercial apoyándonos en tecnología web y móvil on line, lo
												que permite a nuestros clientes garantizar la fiabilidad de
												la información recopilada.</p>


											<a href="modal-saneamientoComercial.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente10" href="#etr" role="tab" data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente
												<i class="icon-angle-right"></i>
											</a>

										</div>

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/outsourcing-repartoDeRecibos.png" alt=""
													class="img-responsive" width="350" height="410" />

											</div>

										</div>

									</div>

								</div>
								<!-- 
										<div class="tab-pane fade" id="censo">

											<div class="row">

												

												<div class="col-sm-7">

													<span class="tab-bullet-active "></span>


													<h3 class="big-title white uppercase">FISE</h3>

													<p>El Fondo de Inclusión Social Energética (FISE) es un proyecto iniciado por ENSA en el año 2012 el cual permite que los usuarios del servicio eléctrico residencial, que se encuentran en una situación de pobreza o vulnerabilidad, reciban mensualmente un vale de S/.16.00 para ser usado como descuento al comprar un balón de gas.
													</p>
														
													<p>
												   	En Gescom tenemos como principal función el reparto de estos vales, la gestión y la capacitación contínua del personal que realizará esta tarea, asegurando que se cuente con los materiales y el equipamiento necesario para ejecutar esta labor.</p>


													
												

													<a  href="modal-fise.html" class="ajax-popup-link  animate1 btn-transparent animate btnmodal" style="margin-right:20px;" >Leer Más
														<i class="icon-angle-right"></i>
													</a>


													<a id="siguiente11"  href="#etr" role="tab" data-toggle="tab" class="btn-transparent animate">Siguiente

														<i class="icon-angle-right"></i>

													</a>

												</div>

												<div class="col-sm-5">

													<div class="desktop-img">
														<img src="images/outsoursion-fise.png" alt="" class="img-responsive" width="250" height="220" style="margin-left: 10%;" />
														

													</div>

												</div>

											</div>

										</div> -->


							</div>

						</div>

					</div>

				</div>

			</div>
			<!-- end process --> </section>
			<!-- end services section -->


			<section id="desarrollo" class="ptop20 pbottom70">

			<div id="desarr" class="process2 ptop70 pbottom50">

				<div class="container">

					<div class="row ">

						<div class="col-sm-12">

							<div class="center">

								<h2 class="big-title white wow fadeInUp" data-wow-delay="0.5s">OUTSOURCING
									TECNOLÓGICO</h2>
								<!-- <div class="thin-line-white wow fadeInUp" data-wow-delay="0.8s"></div> -->

							</div>

						</div>

					</div>

					<div class="row">

						<div class=" col-sm-12">

							<!-- Nav tabs -->

							<ul class="nav nav-tabs mbottom20 wow fadeInUp"
								data-wow-delay="0.5s" role="tablist">

								<li id="12" class="active desarrollo"><a href="#web"
									role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-desktop"></span>

										</div> <b>WEB</b>

								</a></li>

								<li id="13" class="desarrollo"><a href="#movil" role="tab"
									data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-phone"></span>

										</div> <b>MOVIL</b>

								</a></li>

								<li id="14" class="desarrollo"><a href="#desktop"
									role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon oswald fa ">BI</span>

										</div> <b>BUSINESS INTELLIGENCE</b>

								</a></li>

								<li id="15" class="desarrollo"><a href="#transact"
									role="tab" data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon oswald fa ">DM</span>

										</div> <b>DATA MINING</b>

								</a></li>

								<li id="16" class="desarrollo"><a href="#bi" role="tab"
									data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet "></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-cube "></span>

										</div> <b>ARQUITECTURA DE SW </b>

								</a></li>

								<li id="17" class="desarrollo"><a href="#bi2" role="tab"
									data-toggle="tab">

										<div class="mbottom25">

											<span class="tab-bullet last"></span>

										</div>

										<div class="mbottom10">

											<span class="tab-icon fa fa-rocket"></span>

										</div> <b>REINGENIERÍA </b>

								</a></li>

							</ul>

							<!-- Tab panes -->

							<div class="tab-content wow fadeInUp" data-wow-delay="0.5s">

								<div class="tab-pane fade in active" id="web">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-web.png" alt=""
													class="img-responsive" width="" height="410" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">WEB</h3>

											<p>El desarrollo de soluciones en plataforma web, hace
												uso de tecnologías emergentes y lenguajes de programación
												destacados, permitiendo la creación de sistemas integrados y
												portales de atención al cliente de acceso en tiempo real,
												desde cualquier dispositivo con soporte web.</p>

											<p>En GESCOM buscamos brindar a nuestros clientes
												disponibilidad inmediata a su informacion, las 24 horas del
												día y los 365 días del año con el fin de que sus actividades
												no se detengan. Pretendemos ofrecer un servicio basado en la
												accesibilidad a los medios de cualquier plataforma
												tecnológica, permitiendo realizar consultas, seguimiento y
												control del proceso a tiempo real y de esta manera
												garantizar la transparencia del mismo.</p>


											<a href="modal-web.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente12" href="#movil" role="tab"
												data-toggle="tab" class="btn-transparent animate">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="movil">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-movil2.png" alt=""
													class="img-responsive" width="280" height="330" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">MOVIL</h3>

											<p>El desarrollo de aplicaciones móviles garantizando la
												movilidad de su negocio a través de las soluciones
												realizadas, versatilidad en las aplicaciones a traves de las
												caracteristicas de los smartphones como su sistema
												multimedia (a través de fotos y vídeos) y la
												geolocalizacion.</p>

											<p>En GESCOM se hace uso de aplicaciones móviles para el
												ingreso de datos en tiempo real, de la misma forma se puede
												utilizar en modo offline, con el cual se evita depender de
												la conectividad a Internet. Los dispositivos actualmente
												empleados son teléfonos celulares para los procesos de
												Gestión de Consumos, Gestión de Reparto y Tablets destinadas
												para la Gestión de Actividades Comerciales y la Gestión de
												Cortes y reconexiones.</p>


											<a href="modal-movil.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente13" href="#desktop" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="desktop">

									<div class="row">


										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-bi.png" alt=""
													class="img-responsive" width="290" height="410" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">BI (Business
												intelligence)</h3>

											<p>La analítica de datos como soporte en la explotación
												de la información de su empresa y el desarrollo de
												herramientas para el personal táctico y estratégico que
												permita mejorar los indicadores clave de negocio para la
												toma de decisiones, de esta manera optimizar la labor
												gerencial con cuadros de mando usando las buenas prácticas
												de la gestión empresarial como el Balanced ScoreCard.</p>
											<p>En GESCOM hacemos uso de Dashboard analíticos para el
												estudio de los balances de sus procesos a lo largo del
												tiempo.</p>


											<a href="modal-businessIntelligence.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente14" href="#transact" role="tab"
												data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="transact">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-dm.png" alt=""
													class="img-responsive" width="370" height="410" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">DM (MINERÍA DE
												DATOS)</h3>

											<p>La Minería de Datos suele describirse como "El proceso
												de extraer información valida, autentica y que se pueda
												procesar de las bases de datos de gran tamaño." En otras
												palabras, la minería de datos deriva patrones y tendencias
												que existen en los datos.</p>

											<p>En Gescom hacemos uso de la minería de datos para
												realizar estudios enfocados en el comportamiento de los
												usuarios del cliente, de esta manera se analizan de forma
												individual.</p>



											<a href="modal-dataMining.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente15" href="#bi" role="tab" data-toggle="tab"
												class="btn-transparent animate mbottom50-resp">Siguiente

												<i class="icon-angle-right"></i>

											</a>

										</div>



									</div>

								</div>

								<div class="tab-pane fade" id="bi">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-arquitectura.png" alt=""
													class="img-responsive" width="380" height="380" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">ARQUITECTURA DE
												SOFTWARE</h3>

											<p>Ante el despliegue actual de tecnología web, móvil,
												desarrollo de modelos predictivos, entre otros es de gran
												importancia definir y garantizar una arquitectura de
												software regulada por estándares y buenas prácticas de
												desarrollo de software, lo cual permite integrar estos
												componentes para garantizar así la escalabilidad en el
												tiempo, el acceso inmediato, el mantenimiento y soporte.</p>
											<p>En GESCOM se hace uso de Arquitectura Orientada a
												Servicios, con la creación de Web Services para nuestros
												clientes en donde ellos pueden tener la confianza de la
												seguridad e integridad de los datos que estan siendo
												almacenados y procesados.</p>


											<a href="modal-arquitecturaDeSoftware.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente16" href="#bi2" role="tab" data-toggle="tab"
												class="btn-transparent animate">Siguiente <i
												class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="bi2">

									<div class="row">

										<div class="col-sm-5">

											<div class="desktop-img">

												<img src="images/desarrollo-reingenieria.png" alt=""
													class="img-responsive" width="400" height="400" />

											</div>

										</div>

										<div class="col-sm-7">

											<span class="tab-bullet-active"></span>

											<h3 class="big-title white uppercase">REINGENIERÍA</h3>

											<p>Es el proceso por el cual se rediseña una solución
												tecnológica con el fin de actualizar y mejorar sus
												componentes. Comprende desde la migración de la plataforma
												tecnológica (como es el caso de base de datos, lenguajes de
												programacion, servicios) hasta la alineación de sus
												características según los objetivos del negocio.</p>
											<p>En GESCOM trabajamos en conjunto a nuestros clientes,
												orientandolos de tal manera que ellos puedan conocer que
												plataformas tecnológicas y tecnología emergente óptima,
												acorde al servicio que ellos brindan.</p>


											<a href="modal-reingenieria.html"
												class="ajax-popup-link  animate1 btn-transparent animate btnmodal"
												style="margin-right: 20px;">Leer Más <i
												class="icon-angle-right"></i>
											</a> <a id="siguiente17" href="#web" role="tab" data-toggle="tab"
												class="btn-transparent animate">Siguiente <i
												class="icon-angle-right"></i>

											</a>

										</div>

									</div>

								</div>


							</div>

						</div>

					</div>

				</div>

			</div>
			<!-- end process --> </section>
			<!-- end team section -->


			<section id="solucinoesti" class="ptop100">
			<div class="container">
				<div class="row mbottom20">
					<div class="col-sm-12">
						<div class="center">
							<h2 class="section-title oswald wow fadeInUp"
								data-wow-delay="0.5s">SOLUCIONES</h2>

							<p class="grey uppercase mbottom0 wow fadeInUp"
								data-wow-delay="0.8s">Todas nuestras soluciones son
								soportadas por tecnologías</p>

						</div>
					</div>
				</div>

				<div class="row wow fadeInUp" data-wow-delay="0.8s">

					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/sigof-lecturademedidores.png"
									class="img-responsive mauto" alt="" width="150" height="150" /><br>
							</div>
							<div class="team-content animate3">
								<h3>SGC</h3>
								<b>SISTEMA DE GESTION DE CONSUMO</b><br>

								<p>Esta solución mediante software web y móvil procede a la
									captura de la lectura en los medidores de los suministros, con
									el fin de obtener el monto de consumo.</p>
								<div class="social">
									<ul>
										<li class="twitter-icon"><a
											href="gescom/solucion-consumo.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- end team-box -->
					</div>

					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/sigof-repartoderecibos.png"
									class="img-responsive mauto" alt="" width="150" height="150" /><br>
							</div>
							<div class="team-content animate3">
								<h3>SGR</h3>
								<b>SISTEMA DE GESTION DE REPARTO</b>

								<p>
									<br> Se almacena información sobre la entrega de un recibo
									en el domicilio del cliente para un proceso de facturación.
								</p>
								<br>
								<div class="social">
									<ul>
										<li class="twitter-icon"><a
											href="gescom/solucion-reparto.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- end team-box -->
					</div>

					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/acsion-reclamos.png"
									class="img-responsive mauto" alt="" width="150" height="150" /><br>
							</div>
							<div class="team-content2  animate3">
								<h3>SGAC</h3>
								<b>Sistema de gestion de actividades comerciales</b>
								<p>Gestiona el servicio de atención al cliente en
									emergencias; es decir todo el soporte al cliente realizado por
									el personal técnico y operativo de la contratista.</p>
								<div class="social">
									<ul>
										<li class="dribbble-icon"><a
											href="gescom/solucion-actividades.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- team-box -->
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/acsion-emergencias.png"
									class="img-responsive mauto" alt="" width="150" height="150" /><br>
							</div>
							<div class=" team-content3 animate3">
								<h3>SGCR</h3>
								<b>Sistema de gestión para cortes y reconexiones</b>
								<p>Busca automatizar la gestión de los reclamos con el fin
									de optimizar la eficiencia en costos y recursos humanos así
									como la eficacia con los tiempos de atención a los clientes.</p>


								<div class="social">
									<ul>
										<li class="linkedin-icon"><a
											href="gescom/solucion-cortes.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- end team-box -->
					</div>

					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/ssc.png" class="img-responsive mauto" alt=""
									width="150" height="150" /><br>
							</div>
							<div class="team-content4 animate3">
								<h3>SSC</h3>

								<b>SISTEMA DE SANEAMIENTO COMERCIAL </b> <br>
								<p>Sistema dirigido al proceso de empadronamiento de
									suministros, que tiene como meta la recopilación de información
									para la correcta identificación de estos.</p>
								<br>

								<div class="social">
									<ul>
										<li class="dribbble-icon2"><a
											href="gescom/solucion-saneamiento.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- end team-box -->
					</div>

					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="team-box">
							<div class="team-head">
								<img src="images/sgfis.png" class="img-responsive mauto" alt=""
									width="150" height="150" /><br>
							</div>
							<div class="team-content5 animate3">
								<h3>FAIS</h3>
								<b>FACTURACIÓN IN-SITU </b>
								<p>Consiste en la unión de los procesos de Lectura,
									Facturación, Impresión y Reparto de Recibos en un único
									proceso, reduciendo el costo operativo y el tiempo de
									operación.</p>
								<br>

								<div class="social">
									<ul>
										<li class="dribbble-icon3"><a
											href="gescom/solucion-sgfis.html"
											class="ajax-popup-link btnmodal"> <span
												class="fa fa-plus-square animate3"></span>
										</a></li>
									</ul>
								</div>
								<!-- end team-social -->
							</div>
							<!-- end team-content -->
						</div>
						<!-- end team-box -->
					</div>

				</div>
			</div>

			</section>
			<!-- end team section -->


			<section id="clientes" class="ptop100 ">

			<div class="clients ptop70 pbottom70">

				<div class="container">

					<div class="row">

						<div class="col-sm-12">

							<div class="center">

								<h2 class="section-title oswald wow fadeInUp"
									data-wow-delay="0.5s">NUESTROS CLIENTES</h2>

								<p class="grey uppercase mbottom50 wow fadeInUp"
									data-wow-delay="0.8s">Tenemos como característica principal
									la atención 100% personalizada y el desarrollo constante de un
									servicio integral que contribuya al máximo beneficio y
									desarrollo de nuestros clientes</p>

							</div>

						</div>

					</div>

					<div class="row wow fadeInUp" data-wow-delay="1s">

						<div class="col-sm-12">

							<div class="clients-carousel">



								<div class="item">

									<img src="images/clients/img2.png"
										class="img-responsive animate mauto" alt="" width="200"
										height="100" />

								</div>

								<div class="item">

									<img src="images/clients/img4.png"
										class="img-responsive animate mauto" alt="" width="200"
										height="100" />

								</div>

								<div class="item">

									<img src="images/clients/img5.png"
										class="img-responsive animate mauto" alt="" width="200"
										height="100" />

								</div>

								<div class="item">

									<img src="images/clients/img1.png"
										class="img-responsive animate mauto" alt="" width="200"
										height="100" />

								</div>

								<div class="item">

									<img src="images/clients/img3.png"
										class="img-responsive animate mauto" alt="" width="200"
										height="100" />

								</div>

							</div>
							<!-- end clients-carousel -->

						</div>

					</div>

				</div>

			</div>
			<!-- end clients --> <!--
					<div class="testimonials ptop100 pbottom50">

						<div class="container">

							<div class="row wow fadeInUp" data-wow-delay="0.5s">

								<div class="col-sm-12">

									<div class="center">

										<span class="icon-quotes-left quotes"></span>

									</div>

									<div class="testimonials-carousel">

										<div class="item center">

											<h3 class="section-title oswald">Maria Jhonson</h3>

											<b>Founder & Ceo : Kelcan Media</b>

											<div class="test-mask">

												<img src="images/testimonials/testimonials.jpg" alt="" class="img-responsive mauto" width="70" height="70" />

											</div>

											<p class="mbottom0">People tell you the world looks a certain way. Parents tell you how to think. Schools tell you how to think. TV. Religion. And then at a certain point, if you're lucky, you realize you can make up your own mind. Nobody sets the rules but you. You can design your own life.</p>

										</div>

										<div class="item center">

											<h3 class="section-title oswald">Wilbur Walker</h3>

											<b>Marketing : Kelcan Media</b>

											<div class="test-mask">

												<img src="images/testimonials/testimonials2.jpg" alt="" class="img-responsive mauto" width="70" height="70" />

											</div>

											<p class="mbottom0">A man has to learn that he cannot command things, but that he can command himself; that he cannot coerce the wills of others, but that he can mold and master his own will: and things serve him who serves Truth; people seek guidance of him who is master of himself.</p>

										</div>

										<div class="item center">

											<h3 class="section-title oswald">Kellie Cherokee</h3>

											<b>Management : Kelcan Media</b>

											<div class="test-mask">

												<img src="images/testimonials/testimonials3.jpg" alt="" class="img-responsive mauto" width="70" height="70" />

											</div>

											<p class="mbottom0">A human being has so many skins inside, covering the depths of the heart. We know so many things, but we don't know ourselves! Why, thirty or forty skins or hides, as thick and hard as an ox's or bear's, cover the soul. Go into your own ground and learn to know yourself there.</p>

										</div>

									</div>

								</div>

							</div>

						</div>

					</div>
					--> </section>
			<!-- end ourwork section -->


			<section id="contact" class="ptop100">

			<div class="container">

				<div class="row mbottom50">

					<div class="col-sm-12">

						<div class="center">

							<h2 class="section-title oswald center wow fadeInUp"
								data-wow-delay="0.5s">Contáctenos</h2>

							<p class="grey uppercase wow fadeInUp" data-wow-delay="0.8s">Complete
								el siguiente formulario y nos contactaremos con usted lo antes
								posible...</p>

						</div>

					</div>

				</div>

				<div class="contact mbottom70 wow fadeInUp" data-wow-delay="1s">

					<form method="post" action="http://www.gescom.com.pe/contact.php"
						name="contactform" class="contactformDelete" id="contactform">

						<div class="row">

							<div class="col-sm-5 col-sm-offset-1">

								<div class="field">

									<div class="label-form">

										<input name="name" placeholder="Nombre" type="text" id="name"
											size="30" value="" /> <span class="form-icon fa fa-user"></span>

									</div>

								</div>

								<div class="field">

									<div class="label-form">

										<input name="email" placeholder="Email" type="text" id="email"
											size="30" value="" /> <span class="form-icon fa fa-envelope"></span>

									</div>

								</div>

								<div class="field">

									<div class="label-form">

										<input name="phone" placeholder="Teléfono" type="text"
											id="phone" size="30" value="" /> <span
											class="form-icon fa fa-phone"></span>

									</div>

								</div>

							</div>

							<div class="col-sm-5 pull-left col-xs-12">

								<div class="field">

									<div class="label-form">

										<textarea name="comments" placeholder="Mensaje" cols="25"
											rows="6" id="comments"></textarea>

									</div>

								</div>

							</div>

						</div>

						<div class="row ptop15">

							<div class="col-sm-10 col-sm-offset-1">

								<div class="field">

									<input type="submit" class="submit" id="submit"
										value="Enviar Mensaje" />

								</div>

							</div>

						</div>

					</form>

					<div id="message" class="center"></div>

				</div>
				<!-- end contact -->

			</div>

			<div id="map" class="wow bounceInUp" data-wow-delay="0.5s"></div>
			<!-- end map --> </section>
			<!-- end contact section -->

		</div>
		<!-- end content -->

		<footer id="footer">

		<div class="container">

			<div class="row">

				<div class="col-sm-12">

					<div class="footer-contact">

						<ul>

							<li><span class="footer-icon fa fa-flag"></span>

								<p>Calle Almirante Guisse N° 209 Oficina 101 Urb. Sta
									Victoria - Chiclayo - Lambayeque - Perú</p></li>

							<li><span class="footer-icon fa fa-envelope"></span> <a
								href="mailto:gescom@gescom.com.pe" class="footer-mail" title=""
								target="_self">gescom@gescom.com.pe</a></li>

							<li><span class="footer-icon fa fa-phone"></span> <a
								href="#" class="tel">(+51) 074 222535</a></li>

						</ul>

					</div>
					<!-- end footer-contact -->

				</div>

			</div>

			<div class="row mbottom20">

				<div class="col-sm-12"></div>

			</div>

			<div class="row mbottom30">

				<div class="col-sm-12">

					<div class="footer-social">

						<ul>

							<li><a href="https://www.facebook.com/gescomsac" title=""
								target="_blank"> <span
									class="social-icons animate icon-facebook"></span>

							</a></li>

							<li><a href="https://twitter.com/gescomsac" title=""
								target="_blank"> <span
									class="social-icons animate icon-twitter"></span>

							</a></li>

							<li><a
								href="https://www.linkedin.com/company/9365182?trk=tyah&amp;trkInfo=clickedVertical%3Acompany%2Cidx%3A2-1-2%2CtarId%3A1427134872017%2Ctas%3Agescom+sac"
								title="" target="_blank"> <span
									class="social-icons animate fa fa-linkedin"></span>

							</a></li>

							<li><a
								href="https://www.youtube.com/channel/UCZWn4nj2fqcaXgr9nWebSQA"
								title="" target="_blank"> <span
									class="social-icons animate icon-youtube"></span>

							</a></li>

							<li><a
								href="https://plus.google.com/109296524874590391896/about"
								title="" target="_blank"> <span
									class="social-icons animate icon-googleplus"></span>

							</a></li>



						</ul>

					</div>
					<!-- end footer-social -->

				</div>

			</div>

			<div class="row">

				<div class="col-sm-12">

					<div class="copyright">

						<p class="mbottom0">© 2015 - GESCOM</p>

					</div>

				</div>

			</div>

		</div>

		</footer>
		<!-- end footer -->

	</div>
	<!-- page-wrapper -->
	<div class="modal fade" style="z-index: 10500; !important"
		id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="loginmodal-container">
				<h1>Sistema de Control de Gastos</h1>
				<br>
				<form method="post" action="#">
					<input type="text" id="txt_usuario" name="user" placeholder="Usuario"> <input
						type="password" id="txt_clave" name="pass" placeholder="Password"> <input
						type="button" id="btn_login" name="login" class="login loginmodal-submit"
						value="Entrar">
					<div id="login_respuesta"></div>
				</form>

			</div>
		</div>
	</div>

	<a href="#0" class="cd-top">Top</a>


	<script type="text/javascript" src="js/modernizr.custom.min.js"></script>

	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<script type="text/javascript" src="js/dezure-js-plugins.min.js"></script>

	<script type="text/javascript" src="js/jquery.countTo.min.js"></script>

	<script type="text/javascript" src="js/twitter-fetcher.min.js"></script>

	<script type="text/javascript" src="js/wow.min.js"></script>

	<script type="text/javascript"
		src="js/contact-form/jquery.jigowatt.min.js"></script>

	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>

	<script type="text/javascript" src="js/jquery.appear.min.js"></script>

	<!-- Demo Panel -->

	<script type="text/javascript"
		src="js/switcher/bootstrap-select.min.js"></script>

	<script type="text/javascript" src="js/switcher/dmss.min.js"></script>

	<!-- Start Google Maps code -->
<!-- 
	<script type="text/javascript" src="js/jquery.gmap.min.js"></script>

	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?sensor=false"></script>

	<!-- Revolution Slider -->

	<script type="text/javascript"
		src="js/jquery.themepunch.revolution.min.js"></script>

	<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>

	<!-- Master Slider -->

	<script type="text/javascript" src="js/masterslider.min.js"></script>

	<script type="text/javascript" src="js/jquery.easing.min.js"></script>



	<!-- Dezure Scrips File -->

	<script type="text/javascript" src="js/dezure_script.min.js"></script>




	<!-- NUEVO SLIDER 

		<script src="../../code.jquery.com/jquery-1.10.1.min.js" type="text/javascript"></script>
        <script src="../../netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js" type="text/javascript"></script>
		-->

	<script src="js/jquery.grozav.plugins.min.js" type="text/javascript"></script>
	<script src="js/jquery.grozav.bootslider.min.js" type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			var slider = new bootslider('#bootslider', {
				animationIn : "fadeInUp",
				animationOut : "flipOutX",
				timeout : 8000,
				autoplay : true,
				preload : true,
				pauseOnHover : false,
				thumbnails : false,
				pagination : false,
				mousewheel : false,
				keyboard : true,
				touchscreen : true,
				layout : 'fullscreen-center',
				canvas : {
					width : 1440,
					height : 720
				}
			});
			slider.init();
		});
	</script>

	<!-- NUEVO SLIDER -->
	<script type="text/javascript">
		jQuery(document).ready(function() {

			//Wow Animations

			new WOW().init();

			//Pop up modal

			$('.ajax-popup-link').magnificPopup({

				type : 'ajax',
				midClick : true,
				mainClass : 'mfp-fade',
				closeOnBgClick : false,
				closeOnContentClick : true
			});

			// Laptop Slider    

			var slider = new MasterSlider();

			slider.setup('masterslider', {

				width : 492,

				height : 309,

				speed : 20,

				preload : 0,

				space : 2,

				view : 'mask'

			});

			slider.control('arrows');

			slider.control('bullets', {
				autohide : false
			});

			//Browsers Carousel

			var slider2 = new MasterSlider();

			slider2.control('arrows');

			slider2.setup('masterslider2', {

				width : 460,

				height : 270,

				space : 0,

				loop : true,

				view : 'flow',

				layout : 'partialview'

			});

			// Revolution Slider

			revapi = jQuery('.tp-banner').revolution(

			{

				delay : 72000,

				startwidth : 1170,

				startheight : 870,

				hideThumbs : 10,

				fullWidth : "on",

				fullScreen : "on",

				fullScreenOffsetContainer : "",

				hideTimerBar : "off",

				forceFullWidth : "on"

			});

			$(".testimonials-carousel").owlCarousel({

				navigation : true, // Show next and prev buttons

				slideSpeed : 300,

				paginationSpeed : 400,

				singleItem : true,

				pagination : false,

				autoPlay : true,

				transitionStyle : "fade",

				navigationText : [

				"<i class='icon-angle-left'></i>",

				"<i class='icon-angle-right'></i>"

				],

			});

			// Clients Carousel

			$(".clients-carousel").owlCarousel({

				items : 3,

				itemsDesktop : [ 1199, 3 ],

				itemsDesktopSmall : [ 979, 3 ],

				navigation : true,

				pagination : false,

				autoPlay : true,

				navigationText : [

				"<i class='icon-angle-left'></i>",

				"<i class='icon-angle-right'></i>"

				],

			});

			// Count To

			var timerAppeared = false;

			$('.timer').appear();

			$(document.body).on('appear', '.timer', function(e, $affected) {

				if (!timerAppeared) {

					$('.timer').countTo();

				}

				timerAppeared = true;

			});

			// Video Presentation

			$('.play-button a').nivoLightbox({

				beforeHideLightbox : function() {

					$("iframe").remove();

				},

				effect : 'fadeScale',

				keyboardNav : true

			});

			/* Google Maps

			Find the Latitude and Longitude of your address:

				- http://itouchmap.com/latlong.html

				- http://universimmedia.pagesperso-orange.fr/geo/loc.htm

				- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

			

			Find settings explained:

				- https://github.com/marioestrada/jQuery-gMap



			 */

			// Map Markers
			var mapMarkers = [ {

				address : "209 Almirante Guisse Lambayeque Peru",
				latitude : -6.786895,
				longitude : -79.845114,
				icon : {
					image : "images/marker.png",
					iconsize : [ 114, 79 ], // w, h
					iconanchor : [ 21, 53 ]
				// x, y
				}
			} ];

			// Map Color Scheme - more styles here http://snazzymaps.com/
			var mapStyles = [ {
				"featureType" : "landscape",
				"elementType" : "labels",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "transit",
				"elementType" : "labels",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "poi",
				"elementType" : "labels",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "water",
				"elementType" : "labels",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.icon",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"stylers" : [ {
					"hue" : "#00aaff"
				}, {
					"saturation" : -100
				}, {
					"gamma" : 2.15
				}, {
					"lightness" : 12
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.text.fill",
				"stylers" : [ {
					"visibility" : "on"
				}, {
					"lightness" : 24
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry",
				"stylers" : [ {
					"lightness" : 57
				} ]
			} ];

			// Map Initial Location
			var initLatitude = -6.786895;
			var initLongitude = -79.845114;

			// Map Extended Settings
			/*
			var map = jQuery("#map").gMap({
				controls : {
					panControl : true,
					zoomControl : true,
					mapTypeControl : true,
					scaleControl : true,
					streetViewControl : true,
					overviewMapControl : true
				},
				scrollwheel : false,
				markers : mapMarkers,
				latitude : initLatitude,
				longitude : initLongitude,
				zoom : 18,
				style : mapStyles
			});
*/
			///--------datos

			$('#siguiente1').click(function() {

				$("#1").removeClass('active');

				$("#2").addClass('active');

			});

			$('#modelado').click(function() {

				$("#1").addClass('active');

				$("#2").removeClass('active');

				$("#discuss").addClass('active in ');

				$("#planning").removeClass('active in ');

			});

			$('#siguiente2').click(function() {

				$("#2").removeClass('active');

				$("#1").addClass('active');

			});

			$('#inteligencia').click(function() {
				$("#1").removeClass('active');

				$("#2").addClass('active');

				$("#planning").addClass('active in ');

				$("#discuss").removeClass('active in ');
			});

			/*		menú del 3 al 5
			 $('#siguiente3').click(function() {

			 $( "#3" ).removeClass('active');  

			 $( "#4" ).addClass('active');                

			 });

			 $('#siguiente4').click(function() {

			 $( "#4" ).removeClass('active');  

			 $( "#5" ).addClass('active');                

			 });

			 $('#siguiente5').click(function() {

			 $( "#5" ).removeClass('active');  

			 $( "#1" ).addClass('active');                

			 });

			

			 */

			$('#siguiente6').click(function() {

				$("#6").removeClass('active');

				$("#7").addClass('active');

			});

			$('#facturacion').click(function() {
				$("#11").removeClass('active');
				$("#10").removeClass('active');
				$("#9").removeClass('active');
				$("#8").removeClass('active');
				$("#6").addClass('active');
				$("#7").removeClass('active');
				$("#etr").addClass('active in ');
				$("#insitu").removeClass('active in ');
				$("#repartoo").removeClass('active in ');
				$("#online").removeClass('active in ');
				$("#inspeccines").removeClass('active in ');
				$("#censo").removeClass('active in ');
			});

			$('#siguiente7').click(function() {

				$("#7").removeClass('active');

				$("#8").addClass('active');

			});

			$('#saneamiento').click(function() {
				$("#11").removeClass('active');
				$("#10").removeClass('active');
				$("#9").removeClass('active');
				$("#8").removeClass('active');
				$("#7").addClass('active');
				$("#6").removeClass('active');
				$("#etr").removeClass('active in ');
				$("#insitu").addClass('active in ');
				$("#repartoo").removeClass('active in ');
				$("#online").removeClass('active in ');
				$("#inspeccines").removeClass('active in ');
				$("#censo").removeClass('active in ');
			});

			$('#siguiente8').click(function() {

				$("#8").removeClass('active');

				$("#9").addClass('active');

			});

			$('#avtividades').click(function() {
				$("#11").removeClass('active');
				$("#10").removeClass('active');
				$("#9").removeClass('active');
				$("#6").removeClass('active');
				$("#8").addClass('active');
				$("#7").removeClass('active');
				$("#etr").removeClass('active in ');
				$("#insitu").removeClass('active in ');
				$("#repartoo").addClass('active in ');
				$("#online").removeClass('active in ');
				$("#inspeccines").removeClass('active in ');
				$("#censo").removeClass('active in ');
			});

			$('#siguiente9').click(function() {

				$("#9").removeClass('active');

				$("#10").addClass('active');

			});

			$('#lectura').click(function() {
				$("#11").removeClass('active');
				$("#10").removeClass('active');
				$("#8").removeClass('active');
				$("#6").removeClass('active');
				$("#9").addClass('active');
				$("#7").removeClass('active');
				$("#etr").removeClass('active in ');
				$("#insitu").removeClass('active in ');
				$("#repartoo").removeClass('active in ');
				$("#online").addClass('active in ');
				$("#inspeccines").removeClass('active in ');
				$("#censo").removeClass('active in ');
			});

			$('#siguiente10').click(function() {

				$("#10").removeClass('active');
				$("#6").addClass('active');

			});

			$('#reparto').click(function() {
				$("#11").removeClass('active');
				$("#8").removeClass('active');
				$("#9").removeClass('active');
				$("#6").removeClass('active');
				$("#10").addClass('active');
				// $( "#7" ).removeClass('active');
				$("#etr").removeClass('active in ');
				$("#insitu").removeClass('active in ');
				$("#reparto").removeClass('active in ');
				$("#online").removeClass('active in ');
				$("#inspeccines").addClass('active in ');
				// $( "#censo" ).removeClass('active in ');   
			});

			// $('#siguiente11').click(function() {

			// 	$( "#11" ).removeClass('active');  

			// 	$( "#6" ).addClass('active');                

			// });

			// $('#fise').click(function() {

			// 	$( "#6" ).removeClass('active');  
			// 	$( "#7" ).removeClass('active'); 
			// 	$( "#8" ).removeClass('active');  
			// 	$( "#9" ).removeClass('active');  
			// 	$( "#10" ).removeClass('active');  
			// 	$( "#11" ).addClass('active in'); 

			// 	$( "#etr" ).removeClass('active in '); 
			// 	$( "#insitu" ).removeClass('active in ');   
			// 	$( "#repartoo" ).removeClass('active in ');
			// 	$( "#online" ).removeClass('active in ');   
			// 	$( "#inspeccines" ).removeClass('active in '); 
			// 	$( "#censo" ).addClass('active in ');   
			// });

			$('#siguiente12').click(function() {

				$("#12").removeClass('active');

				$("#13").addClass('active');

			});

			$('#web2').click(function() {

				$("#12").addClass('active');
				$("#13").removeClass('active');
				$("#14").removeClass('active');
				$("#15").removeClass('active');
				$("#16").removeClass('active');
				$("#17").removeClass('active in');

				$("#web").addClass('active in ');
				$("#movil").removeClass('active in ');
				$("#desktop").removeClass('active in ');
				$("#transact").removeClass('active in ');
				$("#bi").removeClass('active in ');
				$("#bi2").removeClass('active in ');
			});

			$('#siguiente13').click(function() {

				$("#13").removeClass('active');

				$("#14").addClass('active');

			});

			$('#movil2').click(function() {

				$("#12").removeClass('active');
				$("#13").addClass('active');
				$("#14").removeClass('active');
				$("#15").removeClass('active');
				$("#16").removeClass('active');
				$("#17").removeClass('active in');

				$("#web").removeClass('active in ');
				$("#movil").addClass('active in ');
				$("#desktop").removeClass('active in ');
				$("#transact").removeClass('active in ');
				$("#bi").removeClass('active in ');
				$("#bi2").removeClass('active in ');
			});

			$('#siguiente14').click(function() {

				$("#14").removeClass('active');

				$("#15").addClass('active');

			});

			$('#business').click(function() {

				$("#12").removeClass('active');
				$("#13").removeClass('active');
				$("#14").addClass('active');
				$("#15").removeClass('active');
				$("#16").removeClass('active');
				$("#17").removeClass('active in');

				$("#web").removeClass('active in ');
				$("#movil").removeClass('active in ');
				$("#desktop").addClass('active in ');
				$("#transact").removeClass('active in ');
				$("#bi").removeClass('active in ');
				$("#bi2").removeClass('active in ');
			});

			$('#siguiente15').click(function() {

				$("#15").removeClass('active');

				$("#16").addClass('active');

			});

			$('#mineria').click(function() {

				$("#12").removeClass('active');
				$("#13").removeClass('active');
				$("#14").removeClass('active');
				$("#15").addClass('active');
				$("#16").removeClass('active');
				$("#17").removeClass('active in');

				$("#web").removeClass('active in ');
				$("#movil").removeClass('active in ');
				$("#desktop").removeClass('active in ');
				$("#transact").addClass('active in ');
				$("#bi").removeClass('active in ');
				$("#bi2").removeClass('active in ');
			});

			$('#siguiente16').click(function() {

				$("#16").removeClass('active');

				$("#17").addClass('active');

			});

			$('#arquitectura').click(function() {

				$("#12").removeClass('active');
				$("#13").removeClass('active');
				$("#14").removeClass('active');
				$("#15").removeClass('active');
				$("#16").addClass('active');
				$("#17").removeClass('active in');

				$("#web").removeClass('active in ');
				$("#movil").removeClass('active in ');
				$("#desktop").removeClass('active in ');
				$("#transact").removeClass('active in ');
				$("#bi").addClass('active in ');
				$("#bi2").removeClass('active in ');
			});

			$('#siguiente17').click(function() {

				$("#17").removeClass('active');

				$("#12").addClass('active');

			});

			$('#reingenieria').click(function() {

				$("#12").removeClass('active');
				$("#13").removeClass('active');
				$("#14").removeClass('active');
				$("#15").removeClass('active');
				$("#16").removeClass('active');
				$("#17").addClass('active in');

				$("#web").removeClass('active in ');
				$("#movil").removeClass('active in ');
				$("#desktop").removeClass('active in ');
				$("#transact").removeClass('active in ');
				$("#bi").removeClass('active in ');
				$("#bi2").addClass('active in ');
			});

			//---bg

		});//end

		jQuery(document).ready(
				function($) {
					if ($(this).hasClass('active'))
						$(".processbg").css("background-image",
								"url('images/process-bg1.html')");
				});
		
		jQuery(document).ready(function() {
			$("#btn_login").click(function(){
				console.log("btn_login");
				$("#login_respuesta").html("Conectando...");
				
				if($.trim($('#txt_usuario').val())==''){
					$("#login_respuesta").html("Ingrese nombre de usuario");
					return true;
				}
				
				if($.trim($('#txt_clave').val())==''){
					$("#login_respuesta").html("Ingrese una clave");
					return true;
				}
				
				$.ajax({
				   url:'./Login',
				   method:'POST',
				   type:'json',
				   data:{
					   	'codigo':'LOGIN',
				   		'login':$('#txt_usuario').val(),
				   		'clave':$('#txt_clave').val()
				   }
				}).done(function(data) {
					$("#login_respuesta").html(data);					
				});
			});
		});
	</script>

</body>
</html>


<!-- ***** Google Fonts ***** -->

<!-- link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,300italic,400italic,600,700,600italic,200,200italic' rel='stylesheet' type='text/css' -->

<!-- link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' -->

<!-- ***** Addons Stylesheet ***** -->