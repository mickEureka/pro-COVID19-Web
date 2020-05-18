<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1"><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<title>Pagina Situacion Medica</title>
	</head>
	<body>
		<div class="container">
		<br>
			<h1 class="text-center">Situacion Medica de Pacientes</h1>
			<br><br>
			<div class="dropdown">
			  <label><strong>Estado del Paciente:</strong></label>
			  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Seleccione
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			    <a class="dropdown-item" href="#">Grave</a>
			    <a class="dropdown-item" href="#">En Riesgo</a>
			    <a class="dropdown-item" href="#">Reisgo Level</a>
			    <a class="dropdown-item" href="#">Ninguno</a>
			    
			  </div>
			</div>
			<br>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th>ID</th>
						<th>NOMBRES Y APELLIDOS</th>
						<th>EDAD</th>
						<th>CONDICION MEDICA</th>
						<th>ESTADO</th>
						<th>ACCION</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pac" items="${situacion }">
					<tr>
						<td>${pac.getIdPaciente() }</td>
						<td>${pac.getNomApe() }</td>
						<td>${pac.getEdad() }</td>
						<td>${pac.getCondicionM() }</td>
						<td>${pac.getEstadoM() }</td>
						<td>
							
							<a class="btn btn-danger" href="ControladorPrinc?menu=Situacion&accion=Eliminar&id=${pac.getIdPaciente() }">?</a>
						</td>
					</tr>
					</c:forEach>				
				</tbody>
			</table>
		</div>
		
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>