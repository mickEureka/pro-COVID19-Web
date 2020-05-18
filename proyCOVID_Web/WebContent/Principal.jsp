<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<title>Pagina Principal</title>
	</head>
	<body>
	
		<nav class="navbar navbar-expand-lg navbar-light bg-info">
		  
		  <div class="collapse navbar-collapse" id="navbarNav">
		  	<ul class="navbar-nav">
		      <li class="nav-item active">
		        <a style="margin-left:10px;border:none;" class="btn btn-outline-light" class="nav-link" href="#">Home</a>
		      </li>
		      <li class="nav-item">
		        <a style="margin-left:10px;border:none;" class="btn btn-outline-light" href="ControladorPrinc?menu=Pacientes&accion=Listar" target="myFrame">Pacientes</a>
		      </li>
		      <li class="nav-item">
		        <a style="margin-left:10px;border:none;" class="btn btn-outline-light" href="ControladorPrinc?menu=Situacion&accion=Listar" target="myFrame">Situacion Medica</a>
		      </li>
		      <li class="nav-item">
		        <a style="margin-left:10px;border:none;" class="btn btn-outline-light" href="ControladorPrinc?menu=Administradores&accion=Listar" target="myFrame">Administradores</a>
		      </li>
		      <li class="nav-item">
		        <a style="margin-left:10px;border:none;" class="btn btn-outline-light" href="#">Acerca de</a>
		      </li>
		      
		    </ul>
		    </div>
		    
			<div class="dropdown">
	  			<button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    			 ${Usuario.getNombres()}
	  			</button>
	  			<div class="dropdown-menu text-center">
	    			<a class="dropdown-item" href="#">
	    				<img src="imagenes/user.png" alt="60" width="60">
	    			</a>
	    			<a class="dropdown-item" href="#">${Usuario.getUsuario()}</a>
	    			<a class="dropdown-item" href="#"></a>
	    			<div class="dropdown-divider"></div>
	    			<form action="Validar" method="POST">
	    				<button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
	    			</form>
	  			</div>
			</div>
		 </div>
		</nav>
		<div class="m-2" style="height:550px">
			<iframe name="myFrame" style="height:100%; width:100%; border:none;"></iframe>
		</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>	
	</body>
</html>