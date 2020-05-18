<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">	
		<title>Logeo</title>
	</head>
	<body>
		<div class="container mt-4 col-lg-4">
			<div class="card col-sm-10">
				<div class="card-body">
					<form class="form-sign" action="Validar" method="POST">
						<div class="form-group text-center">
							<h3>Login</h3>
							<img src="imagenes/logoInicio.png" alt="70" width="150"/>
							<label>Bienvenido al Sistema</label>
						</div>
						<div>
							<label>Usuario:</label>
							<input type="text" name="txtusuario" class="form-control">
						</div>
						
						<div>
							<label>Contrase�a:</label>
							<input type="password" name="txtcontra" class="form-control">
						</div>
						<br>
						<br>
						<input type="submit" name="accion" value="Ingresar" class="form-control btn btn-primary">
					</form>
				</div>
			</div>
		</div>
	
	
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>