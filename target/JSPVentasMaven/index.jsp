<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Ventas</title>
<link type="text/css" rel="stylesheet"
	href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
<!-- <link type="text/css" rel="stylesheet" href="CSS/estilos.css"> -->
<link type="text/css" rel="stylesheet" href="CSS/estilos.css">
</head>
<body>
	<div class="container">
		<main class="form-signin w-100 m-auto">
			<form action="validarUsuario" method="post">
				<img class="mb-4" src="image/ventas-logo.png" alt="" width="72"
					height="72">
				<h1 class="h3 mb-3 fw-normal">LOGIN</h1>

				<div class="form-floating">
					<input type="email" class="form-control" id="txtUserName"
						   name="email" placeholder="name@example.com">
					<label for="txtUserName">Dirección de Email</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="txtPassword"
						   name="password" placeholder="Password"> 
					<label for="txtPassword">Password</label>
				</div>

				<button class="btn btn-danger w-100 py-2" type="submit">Ingresar</button>
				<p class="mt-5 mb-3 text-body-secondary">&copy; 2023</p>
			</form>
		</main>
	</div>





	<!--Configuración para usar bootstrap js-->
	<script type="text/javascript"
		src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>