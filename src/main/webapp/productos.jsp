<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<div class="container">
							<div class="table-wrapper">
								<div class="table-title">
									<div class="row">
										<div class="col-sm-6">
											<h2>
												Gestión de <b>Productos</b>
											</h2>
										</div>
										<div class="col-sm-6">
											<a class="btn btn-success"
											   href="<%= request.getContextPath()%>/formNewProduct"
											   role="buttom">
											   <i class="bi bi-plus-circle"></i> 
												<span>Agregar nuevo Producto</span>
											</a>																			
										</div>
									</div>
								</div>
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th>Código</th>
											<th>Nombre</th>
											<th>Precio</th>
											<th>Stock</th>
											<th>Acciones</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${products}" var="p">
											<tr>
												<td>${p.id}</td>
												<td>${p.nombre}</td>
												<td>
													<fmt:setLocale value = "es-AR"/>
													<fmt:formatNumber value="${p.precio}" type="currency"/>
												</td>
												<td>${p.stock}</td>
												<td><a href="#editEmployeeModal" class="edit"
													data-toggle="modal"><i class="bi bi-pencil-fill"
														data-toggle="tooltip" title="Editar"></i></a> <a
													href="#deleteEmployeeModal" class="delete"
													data-toggle="modal"><i class="bi bi-trash3-fill"
														data-toggle="tooltip" title="Eliminar"></i></a></td>
											</tr>	
										</c:forEach>
										
										

									</tbody>
								</table>
								<!-- <div class="clearfix">
									<div class="hint-text">
										Showing <b>5</b> out of <b>25</b> entries
									</div>
									<ul class="pagination">
										<li class="page-item disabled"><a href="#">Previous</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item active"><a href="#"
											class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">4</a></li>
										<li class="page-item"><a href="#" class="page-link">5</a></li>
										<li class="page-item"><a href="#" class="page-link">Next</a></li>
									</ul>
								</div> -->
							</div>
						</div>
						<!-- Edit Modal HTML -->
						
						<div id="addProductModal" class="modal fade" tabindex="-1" 
							aria-labelledby="productModalLabel" aria-hidden="true">>
							<div class="modal-dialog">
								<div class="modal-content">
									<form id="newProductForm" action="registrarProducto" method="post">
										<div class="modal-header">
											<h4 class="modal-title">Registrar Nuevo Producto</h4>
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="form-group">
												<label>Nombre</label> 
												<input type="text" class="form-control"
													   required name="txtNombre"
													   maxlength="45">
											</div>
											<div class="form-group">
												<label>Precio</label>
												<input type="number" inputmode="decimal" name="txtPrecio" class="form-control"
														id="currency-field" 
														required name="txtPrecio"
														onFocus="this.type='number'; this.value=this.lastValue"
														onBlur="myFunction()"
														step="0.01">
												
											</div>											
											<div class="form-group">
												<label>Stock</label> 
												<input type="number" class="form-control"
													required name="txtStock"
													value="${param.txtStock}">
											</div>
										</div>
										<div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Salir</button>
									        <button type="submit" class="btn btn-primary" onclick="myFunction2()">Guardar Cambios</button>
									    </div>
									</form>
									<c:if test="${not empty errores}">
										<div style="color: red">
											<c:forEach items="errores" var="e">
												<li>${e}</li>
											</c:forEach>
										</div>
									</c:if>
								</div>
							</div>
						</div>
						<!-- Edit Modal HTML -->
						<div id="editEmployeeModal" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<form>
										<div class="modal-header">
											<h4 class="modal-title">Edit Employee</h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
										</div>
										<div class="modal-body">
											<div class="form-group">
												<label>Name</label> <input type="text" class="form-control"
													required>
											</div>
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control" required>
											</div>
											<div class="form-group">
												<label>Address</label>
												<textarea class="form-control" required></textarea>
											</div>
											<div class="form-group">
												<label>Phone</label> <input type="text" class="form-control"
													required>
											</div>
										</div>
										<div class="modal-footer">
											<input type="button" class="btn btn-default"
												data-dismiss="modal" value="Cancel"> <input
												type="submit" class="btn btn-info" value="Save">
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- Delete Modal HTML -->
						<div id="deleteEmployeeModal" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<form>
										<div class="modal-header">
											<h4 class="modal-title">Delete Employee</h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
										</div>
										<div class="modal-body">
											<p>Are you sure you want to delete these Records?</p>
											<p class="text-warning">
												<small>This action cannot be undone.</small>
											</p>
										</div>
										<div class="modal-footer">
											<input type="button" class="btn btn-default"
												data-dismiss="modal" value="Cancel"> <input
												type="submit" class="btn btn-danger" value="Delete">
										</div>
									</form>
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
		  
		  x.type='';
		  x.lastValue=x.value;
		  x.value=x.value==''?'':(+x.value).toLocaleString("es-AR", {style:"currency", currency:"ARS"});
		};
		
		function myFunction2() {
			  let x = document.getElementById("currency-field");
			  
			  x.type='number';
			  x.value=x.lastValue;
			};
		
		
	</script>
	
	</body>
</html>




