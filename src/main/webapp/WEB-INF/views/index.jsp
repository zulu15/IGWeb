<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1.0">
<script src="resources/js/jquery-1.11.2.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="shortcut icon" type="text/x-icon" href="imagenes/logo.png">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet" href="resources/css/owl.transitions.css">
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="resources/css/form-elements.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet"
	href="resources/font-awesome/css/font-awesome.min.css">

<title>Gym-Tomcats</title>

<style>
.borde {
	border: 1px solid #ddd;
}

.adaptar {
	min-width: 100%;
}

.espacio {
	padding-top: 30px;
}
</style>

</head>
<body>

	<nav class=" se-gris padding-largo text-center">
		<ul class="no-lista">
			<li class="col-md-3 inline-block pacifico"><a href="index.html"
				class="verde mediano">Gym-Tomcats</a></li>
			<li class="col-md-3 inline-block"><a href="menu.html">Menú</a></li>
			<li class="col-md-3 inline-block"><a href="contacto.html">Contacto</a></li>
		</ul>
	</nav>

	<div
		class="col-md-6 center-block quitar-float text-center espacio-arriba ">

		<div class="animated fadeInDown retraso-2">
		
			<h1 class="pacifico grande verde fadeIn retraso-1">Gym Tomcats</h1>
			<br>
			<h2>Ven y logra todo lo que querias...</h2>
			<nav class="mediano">
				<p>Somos una empresa conformada por gente trabajadora....</p>

				<!--<a href="menu.html" class="espacio-derecha">Menú</a>
				<a href="contacto.html" class="espacio-derecha">Contacto</a>-->
			</nav>
		</div>
		<!-- <img src="resources/imagenes/1.jpg" class="animated fadeInUp"> -->

	</div>

	<!--  Prueba Slider -->
	<div class="animated fadeInUp">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="adaptar" src="resources/imagenes/img1.jpg"
						alt="Entrenamiento profesional">
					<div class="carousel-caption">
						<h3>Training</h3>
						<p>The atmosphere in Chania has a touch of Florence and
							Venice.</p>
					</div>
				</div>

				<div class="item">
					<img class="adaptar" src="resources/imagenes/img2.jpg" alt="Chania">
					<div class="carousel-caption">
						<h3>Chania</h3>
						<p>The atmosphere in Chania has a touch of Florence and
							Venice.</p>
					</div>
				</div>

				<div class="item">
					<img class="adaptar" src="resources/imagenes/img3.jpg" alt="Flower">
					<div class="carousel-caption">
						<h3>Flowers</h3>
						<p>Beatiful flowers in Kolymbari, Crete.</p>
					</div>
				</div>

				<div class="item">
					<img class="adaptar" src="resources/imagenes/img4.jpg" alt="Flower">
					<div class="carousel-caption">
						<h3>Flowers</h3>
						<p>Beatiful flowers in Kolymbari, Crete.</p>
					</div>
				</div>

			</div>


			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>


		<br> <br>
		<div class="container animated animate-from-right">

			<h1 class="text-center text-info wow fadeInDown">BIENVENIDO A IG</h1>

			<blockquote>
				<p class="wow fadeInRight">
					<b>Nuestro gimnasio cuenta con las ultimas maquinarias lideres
						en entrenamiento personal de alta competencia. Nuestra plataforma
						web te guiara a lo largo de tu entrenamiento, permitiendote
						controlar tu peso y progreso a lo largo del tiempo.</b>
				</p>
				<footer class="wow fadeInLeft">
					La fuerza no viene de una capacidad física. Viene de una voluntad
					indomable. <cite title="Source Title">-Mahatma Gandhi.</cite>
				</footer>

			</blockquote>

			<br>
		</div>





		<!-- Register inicio prueba -->

		<div class="row fondo">
			<div class="col-sm-3"></div>
			<div class="col-sm-1"></div>
			<div class="col-sm-5">

				<div class="form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Registrate ahora</h3>
							<p>
								Completa los campos siguientes para <b>realizar una
									pre-inscripción</b>:
							</p>
						</div>
						<div class="form-top-right">
							<i class="fa fa-pencil"></i>
						</div>
					</div>
					<div class="form-bottom">
						<form:form action="register" method="post" commandName="socioForm"
							class="registration-form">
							<div class="form-group">
								<label class="" for="form-first-name">Ingrese su nombre</label>
								<form:input path="nombre" placeholder="Nombre..."
									class="form-first-name form-control" id="form-first-name" />
								<c:if test="${not empty mapa.nombreInvalido}">
									<br>
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${mapa.nombreInvalido}

									</div>

								</c:if>
							</div>
							<div class="form-group">
								<label class="" for="form-last-name">Ingrese su apellido</label>
								<form:input path="apellido" placeholder="Apellido..."
									class="form-last-name form-control" id="form-last-name" />

								<c:if test="${not empty mapa.apellidoInvalido}">
									<br>
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${mapa.apellidoInvalido}

									</div>

								</c:if>
							</div>
							<div class="form-group">
								<label class="" for="form-email">Ingrese su email</label>
								<form:input path="email" placeholder="Email..."
									class="form-email form-control" id="form-email" />
								<c:if test="${not empty mapa.emailInvalido}">
									<br>
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${mapa.emailInvalido}

									</div>

								</c:if>
							</div>
							<div class="form-group">
								<label class="" for="form-pwd">Ingrese una contraseña</label>

								<form:password path="password" placeholder="Contraseña..."
									class="form-email form-control" id="form-pwd" />
								<c:if test="${not empty mapa.passwordInvalido}">
									<br>
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${mapa.passwordInvalido}

									</div>

								</c:if>

							</div>
							<div class="form-group">
								<label class="" for="form-pwd-repeat">Repita su
									contraseña</label> <input type="password" name="passwordRepeat"
									placeholder="Contraseña..." class="form-email form-control"
									id="form-pwd-repeat">
								<c:if test="${not empty mapa.password2}">
									<br>
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${mapa.password2}

									</div>

								</c:if>

							</div>

							<div class="form-group">
								<label class="" for="form-disciplina">Seleccione
									disciplina</label>

								<form:select class="form-control" path="disciplina">
									<form:option value="none" label="- Ninguna -" />
									<form:options items="${disciplinaList}" itemValue="id"
										itemLabel="nombre" />
								</form:select>
							</div>








							<div class="form-group">
								<label class="" for="form-edad">Ingrese su edad</label>

								<form:input path="edad" placeholder="Edad..."
									class="form-email form-control" id="form-edad" />

							</div>

							<div class="form-group">
								<label class="" for="form-peso">Ingrese su peso (kg)</label>

								<form:input path="peso" placeholder="Peso..."
									class="form-email form-control" id="form-peso" />

							</div>


							<div class="form-group">
								<label class="" for="form-altura">Ingrese su altura (m)</label>

								<form:input path="altura" placeholder="Altura..."
									class="form-altura form-control" id="form-altura" />

							</div>


							<button type="submit" class="btn">Registrarme!</button>
						</form:form>
					</div>
				</div>
				<c:if test="${not empty errorRegistro}">
					<br>
					<div class="alert alert-danger" role="alert">
						<span class="glyphicon glyphicon-exclamation-sign"
							aria-hidden="true"></span> <span class="sr-only">Error:</span>
						${errorRegistro}

					</div>

				</c:if>
			</div>


		</div>

		<!-- Fin prueba register -->
	</div>
</body>
</html>