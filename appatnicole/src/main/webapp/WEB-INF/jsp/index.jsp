<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<title>App AT - Pronto Pet - Nicole Roale</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

	<div id="login">
		<h3 class="text-center text-white pt-5">Clínica ProntoPet</h3>
		<div class="container">

			<form action="/login">
				<div class="form-group">
					<button id="login" class="btn btn-light" href="/login">Logout</button>
				</div>
			</form>
		
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
			
						<h3 class="text-center text-info">Perfil</h3>

						<h5>Usuário:</h5>
						<p>${user.nome}</p>
						<h5>Email:</h5>
						<p>${user.email}</p>
						<p>
							<a href="${user.git}">Git</a><i class="bi bi-github"></i>
						</p>

						<form action="/pedido" method="get">
							<div class="form-group">
								<input type="submit" class="btn btn-info btn-md"
									value="Cadastrar Pedido">
							</div>
						</form>

						<form action="/paciente" method="get">
							<div class="form-group">
								<input type="submit" class="btn btn-info btn-md"
									value="Cadastrar Paciente">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>