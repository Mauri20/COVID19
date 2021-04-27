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
				<div class="row justify-content-center m-5">
					<center class="h3">
						<label>Consulta qui&eacute;n de t&uacute; familia es beneficiario del apoyo econ&oacute;mico para alimentaci&oacute;n en Emergencia.</label>
						<br>
						<label class="cov">COVID19</label>
					</center>
				</div>
			</div>
			<div class="col-6 offset-3">
				<div class="row justify-content-center">
					<form action="ControllerConsulta" method="post" class="container">
						<div class="input-group">
							<input type="text" required name="dui"  class="form-control campo" placeholder="Ingresa tu n&uacute;mero de DUI 00000000-0" aria-label="DUI" aria-describedby="button-addon2">
							<button class="btn btn-success butt" type="submit" id="button-addon2">CONSULTAR</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-10 offset-1">
				<div class="row m-5">
					<center class="h5 m-5">
						<label>El apoyo econ&oacute;mico brindado por el Gobierno de El Salvador est&aacute; dirigido a personas afectadas por la pandemia COVID-19. Dicho beneficio corresponde a $300.00 por vivienda.</label>
					</center>
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