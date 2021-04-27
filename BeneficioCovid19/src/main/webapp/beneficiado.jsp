<!doctype html>
<html lang="es">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Animate CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
<link rel="stylesheet" type="text/css" href="css/style.css">

<title>Beneficio COVID19</title>
<link rel="shortcut icon" href="img/icono.png">
<script type="text/javascript" charset="utf-8" src="https://github.com/digitalBush/jquery.maskedinput/blob/master/lib/jquery-1.9.0.min.js"></script>
<%
	//Retomando sesion
	HttpSession sesion = (HttpSession) request.getSession();
	String benef= String.valueOf(sesion.getAttribute("benef"));
	System.out.print( "Nombre: "+benef+" ");
	
	if(benef.equals(null)||benef.equals("null")){
		response.sendRedirect("index.jsp");
	}
%>
</head>
<body class="bg-light">
	<div class="container-fluid ">
		<div class="row align-items-center">
			<div class="col-12 bg-dark">
				<div class="row justify-content-center">
					<img src="img/Logo_GOES2.png" class="img-fluid">
				</div>
				
			</div>
			<div class="col-8 offset-2">
				<div class="row justify-content-center m-2">
					<center class="h3">
						<img src="img/caritaFelz.png" class="img-fluid img1 mb-2">
						<label><% out.print(benef); %>, si eres beneficiario del apoyo econ&oacute;mico de $300.00 para alimentaci&oacute;n de tu hogar.</label>
						
					</center>
				</div>
			</div>
			<div class="col-6 offset-3 mt-3">
				<div class="row justify-content-center">
					<label class="letra2">Tu pago podr&aacute; ser retirado en ventanilla en cualquiera de las siguientes sucursales.</label>
				</div>
				<div class="row justify-content-center m-3">
					<a href="#" class="btn btn-success butt2">ver Sucursales</a>
					<form action="ControllerConsulta" method="post">
						<button type="submit" class="btn btn-success butt2" name="btncerrar">Intentar de Nuevo</button>
					</form>
				</div>
				
				<div class="row justify-content-center m-5">
					<strong class="h3"><center>A partir del d&iacute;a 28 de marzo del 2020</center></strong>
					
				</div>
				<div class="row justify-content-center">
					RECUERDA:
					<br>
					Este beneficio est&aacute; destinado para la alimentaci&oacute;n de tu familia, ya que en este momento de emergencia es vital contar con los recursos necesarios.
				</div>
			</div>
		</div>
	</div>






	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>