<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext['request'].contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Administrador::IG</title>
<!-- BOOTSTRAP STYLES-->
<link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${ctx}/resources/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="${ctx}/resources/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body><%@ taglib uri="http://java.sun.com/jsp/jstl/core"
		prefix="c"%>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-cls-top " role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Administrador </a>
		</div>
		<div
			style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
			<a href="login.html" class="btn btn-danger square-btn-adjust">Logout</a>
		</div>
		</nav>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li class="text-center"><img
					src="${ctx}/resources/img/find_user.png"
					class="user-image img-responsive" /></li>



				<li><a href="chart.html"><i class="fa fa-bar-chart-o fa-3x"></i>
						Estadisticas</a></li>
				<li><a class="active-menu" href="table.html"><i
						class="fa fa-table fa-3x"></i> Usuarios</a></li>
				<li><a href="form.html"><i class="fa fa-edit fa-3x"></i>
						Categorias </a></li>

				<li><a class="" href="blank.html"><i
						class="fa fa-square-o fa-3x"></i> Otra sección</a></li>
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Bienvenido al panel de administración</h2>
						<h5>Desde aqui podra ver estadísticas, administrar usuarios y
							categorias.</h5>
						<br> <br> <br>

						<!-- Listado de socios -->
						<legend class="text-center">Listado de usuarios</legend>

						<table class="table table-striped">
							<thead>
								<tr>
									<th>Email</th>
									<th>Nombre</th>
									<th>Apellido</th>
									<th>Password</th>
									<th>Peso</th>
									<th>Edad</th>
									<th>Altura</th>
									<th>Acciones</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${socioList}" var="socio">
									<tr>
										<td>${socio.email}</td>
										<td>${socio.nombre}</td>
										<td>${socio.apellido}</td>
										<td>${socio.password}</td>
										<td>${socio.peso}</td>
										<td>${socio.edad}</td>
										<td>${socio.altura}</td>
										<td>


											<button class="btn btn-danger btn-sm"
												onClick="eliminar('${socio.email}')">
												<span class='glyphicon glyphicon-trash' aria-hidden='true'></span>
											</button>
										</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>



	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${ctx}/resources/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${ctx}/resources/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${ctx}/resources/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${ctx}/resources/js/custom.js"></script>










	<script>
		function eliminar(email) {
			var respuesta = confirm("¿Esta seguro que desea eliminar este socio?");
			if (respuesta == true) {
				$.ajax({
					url : '${pageContext.request.contextPath}/administrador/eliminar/' + email,
					type : 'POST',
					success : function(data) {
						if (data.error != null) {
							alert(data.error);
						} else {

							window.location = "${pageContext.request.contextPath}/administrador/panel";

						}
					}

				});

			}

		}
	</script>

</body>
</html>