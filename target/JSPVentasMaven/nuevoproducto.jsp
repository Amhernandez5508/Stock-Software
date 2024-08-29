<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Ventas</title>
<link type="text/css" rel="stylesheet"
	href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet"
	href="webjars/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
<link type="text/css" rel="stylesheet" href="CSS/crud_estilos.css">
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
						<h3 class="text-center">REGISTRO DE PRODUCTOS</h3>
						<hr />
						<div class="container">
							<div class="table-wrapper">
								<div class="table-title">
									<div class="row justify-content-center">
										<div class="col-sm-5">
											<div class="card">
												<h5 class="card-header">Registro de un nuevo <strong>Producto</strong></h5>
												<div class="card-body">
													<form id="newProductForm" action="registrarProducto"
														method="post">
														<div class="form-group">
															<label>Nombre</label> <input type="text"
																class="form-control" required name="txtNombre"
																maxlength="45">
														</div>
														<div class="form-group">
															<label>Precio</label> <input type="number"
																inputmode="decimal" name="txtPrecio"
																class="form-control" id="currency-field" required
																name="txtPrecio"
																onFocus="this.type='number'; this.value=this.lastValue"
																onBlur="myFunction()" step="0.01">

														</div>
														<div class="form-group">
															<label>Stock</label> <input type="number"
																class="form-control" required name="txtStock">
														</div>
														<div class="card-footer">
															<a href="productos"><button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Salir</button></a>
															<button type="submit" class="btn btn-primary"
																onclick="myFunction2()">Guardar Cambios</button>
														</div>
													</form>
													<c:if test="${not empty errores }">
														<div style="color: red">
															${errores }
														</div>
													</c:if>
													
													
												</div>
											</div>
										</div>
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

	<script>
		function myFunction() {
			let x = document.getElementById("currency-field");

			x.type = '';
			x.lastValue = x.value;
			x.value = x.value == '' ? '' : (+x.value).toLocaleString("es-AR", {
				style : "currency",
				currency : "ARS"
			});
		};

		function myFunction2() {
			let x = document.getElementById("currency-field");

			x.type = 'number';
			x.value = x.lastValue;
		};
	</script>

</body>
</html>




