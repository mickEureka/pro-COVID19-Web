<%@page import="javax.servlet.jsp.tagext.TagLibraryValidator"%>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<title>Insert title here</title>
	</head>
	<body>
		<div class="d-flex">
			<div class="card col-sm-4">
			<div class="card-body">
				<form action="ControladorPrinc?menu=Administradores" method=POST>
					<div class="form-group">
						<label>Nombres</label>
						<input type="text" value="${administrador.getNombres() }" name="txtNom" class="form-control">
					</div>
					<div class="form-group">
						<label>Telefono</label>
						<input type="text" value="${administrador.getFono() }" name="txtFono" class="form-control">
					</div>
					<div class="form-group">
						<label>Usuario</label>
						<input type="text" value="${administrador.getUsuario() }" name="txtUsuario" class="form-control">
					</div>
					<div class="form-group">
						<label>Contraseña</label>
						<input type="text" value="${administrador.getContrase() }" name="txtContras" class="form-control">
					</div>
					<div class="form-group">
						<label>Estado</label>
						<input type="text" value="${administrador.getEstado() }" name="txtEstado" class="form-control">
					</div>
					<input type="submit" name="accion" value="Agregar" class="btn btn-info">
					<input type="submit" name="accion" value="Actualizar" class="btn btn-success">
					
				</form>
			</div>
		</div>
		<div class="col-sm-8">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>NOMBRES</th>
						<th>TELEFONO</th>
						<th>USUARIO</th>
						<th>CONTRASENA</th>
						<th>ESTADO</th>
						<th>ACCIONES</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="adm" items="${administradores}">
					<tr>
						<td>${adm.getId()}</td>
						<td>${adm.getNombres()}</td>
						<td>${adm.getFono()}</td>
						<td>${adm.getUsuario()}</td>
						<td>${adm.getContrase()}</td>
						<td>${adm.getEstado()}</td>
						<td>
							<a class="btn btn-warning" href="ControladorPrinc?menu=Administradores&accion=Editar&id=${adm.getId() }">Editar</a>
							<a class="btn btn-danger" href="ControladorPrinc?menu=Administradores&accion=Eliminar&id=${adm.getId() }">Eliminar</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>