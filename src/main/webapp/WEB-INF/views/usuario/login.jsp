<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext['request'].contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cliente</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/form-elements.css">
<link rel="stylesheet" href="resources/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="resources/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">

				<div class="row">
					<div class="">
						<h1>Bienvenido al inicio de sesion de IG</h1>
						<div class="">
							<p>
								Inicie sesion en nuestro portal IG para ver estadisticas de su
								progreso planes de entrenamiento y mucho más!!. <strong><a
									href="${ctx}/register#registrarse">¿No tienes una cuenta?
										Registrate!</a></strong>
							</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">

						<div class="form-box">
							<div class="form-top color">
								<div class="form-top-left">
									<h3>Bienvenido a nuestro sitio</h3>
									<strong>Ingrese e-mail y Password:</strong>
								</div>
								<div class="form-top-right">
									<i class="fa fa-key"></i>
								</div>
							</div>
							<div class="form-bottom">
								<form:form action="" method="post" class="login-form"
									commandName="loginForm">
									<div class="form-group">
										<label class="sr-only" for="form-username">E-mail</label>
										<form:input path="email" placeholder="E-mail..."
											class="form-username form-control" id="form-username" />
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-username">Passsword</label>
										<form:password path="password" placeholder="Password..."
											class="form-username form-control" id="form-username" />

									</div>

									<button type="submit" class="btn">Ingresar!</button>
								</form:form>
							</div>
						</div>
						<c:if test="${not empty loginFallido}">
							<p style="color: red">${loginFallido}</p>
						</c:if>
					</div>
					<div class="col-sm-4"></div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>