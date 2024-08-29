<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Sistema Ventas</title>
		<link type="text/css" rel="stylesheet" href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
		<link type="text/css" rel="stylesheet" href="webjars/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
		<link type="text/css" rel="stylesheet" href="CSS/principal_style.css">
	</head>
	
	<body>
		<div class="container-fluid overflow-hidden">
			<div class="row vh-100 overflow-auto">
				<!-- Sección donde se incluye el menu -->
				<%@include file="WEB-INF/jspf/menu.jspf"%>
				<!-- Sección de lo que se muestra en la pantalla -->
				<div class="col d-flex flex-column h-sm-100">
					<main class="row overflow-auto">
						<div class="col pt-4">
							<h3>Bienvenido al Sistema de Ventas</h3>
							<hr />
							<div class="viewport_height">
								<div class="container text-center">
									<div class="row align-items-center margintb_auto">
										<div class="col-6 bg-primary">
										HOLA
										</div>
										
										<div class="col-6 bg-secondary">
										COMO
										</div>
									</div>
									
									<div class="row align-items-center margintb_auto">
										<div class="col-6 bg-success">
										ESTAS
										</div>
										
										<div class="col-6 bg-danger">
										BIEN?
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
		</div>
		<%-- <%@include file="WEB-INF/jspf/footer.jspf"%> --%>
	</body>
</html>




