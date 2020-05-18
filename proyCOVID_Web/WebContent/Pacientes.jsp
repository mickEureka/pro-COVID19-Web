<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<title>Pagina Pacientes</title>
	</head>
	<body>
		<div class="container text-center">
		<br>
			<h1>Lista de Pacientes</h1>
			<br><br>
			<div>
				<form class="form-inline">
					<label><strong>Busqueda por Nombre:</strong></label>
					<input type="search" name="txtBuscar" class="form-control" style="margin-left:10px;margin-right:10px">
					<input type="submit" name="accion" value="Buscar" class="btn btn-outline-success">
				</form>
			</div>
			<br>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th>ID</th>
						<th>DNI</th>
						<th>NOMBRES Y APELLIDOS</th>
						<th>EDAD</th>
						<th>TELEFONO</th>
						<th>SEXO</th>
						<th>DIRECCION</th>
						<th>ACCIONES</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pac" items="${pacientes }">
					<tr>
						<td>${pac.getIdPaciente() }</td>
						<td>${pac.getDni() }</td>
						<td>${pac.getNombreApe() }</td>
						<td>${pac.getEdad() }</td>
						<td>${pac.getTelefono() }</td>
						<td>${pac.getSexo() }</td>
						<td>${pac.getDireccion() }</td>
						<td>
							<a class="btn btn-warning">Editar</a>
							<a class="btn btn-danger" href="ControladorPrinc?menu=Pacientes&accion=Eliminar&id=${pac.getIdPaciente() }">Eliminar</a>
						</td>
					</tr>
					</c:forEach>				
				</tbody>
			</table>
		</div>
		
		  
		
		
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	</body>
</html>