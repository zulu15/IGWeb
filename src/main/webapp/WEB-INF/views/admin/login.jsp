<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext['request'].contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Administrador IG</title>
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
<body>
	<div class="container">
		<div class="row text-center ">
			<div class="col-md-12">
				<br /> <br />
				<h2>Administrador "IG"</h2>
				<br />
			</div>
		</div>
		<div class="row ">

			<div
				class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong>Ingrese sus datos</strong>
					</div>
					<div class="panel-body">
						<form:form method="post" action="" commandName="adminForm">

							<br />
							<div class="form-group input-group">
								<span class="input-group-addon"><i class="fa fa-tag"></i></span>
								<form:input path="email" class="form-control"
									placeholder="Email " />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<form:password path="password" class="form-control"
									placeholder="Contraseña"/>
							</div>
							<div class="form-group">
								<label class="checkbox-inline"> <input type="checkbox" />
									Recordarme
								</label> <span class="pull-right"> <a href="#">¿ Olvidaste tu
										contraseña ? </a>
								</span>
							</div>

							<input type="submit" class="btn btn-primary " value="Ingresar" />

							<hr />
							Portal de administración.
						</form:form>
					</div>

				</div>
				<c:if test="${not empty errorLogin}">
					<div class="alert alert-danger" role="alert">
						<span class="glyphicon glyphicon-exclamation-sign"
							aria-hidden="true"></span> <span class="sr-only">Error:</span>
						${errorLogin}
					</div>
				</c:if>
			</div>


		</div>
	</div>


	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${ctx}/resources/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${ctx}/resources/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${ctx}/resources/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${ctx}/resources/js/custom.js"></script>

</body>
</html>
