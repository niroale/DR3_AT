<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<title>App ATT - Clínica Veterinária</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
</head>

<body>
	<div id="form_paciente">
		<div class="container">
			<h3 class="text-center text-white pt-1">Clínica ProntoPet</h3>

			<form action="/login">
				<div class="form-group">
					<button id="login" class="btn btn-light" href="/home">Login</button>
				</div>
			</form>

			<div id="form_paciente-row"
				class="row justify-content-center align-items-center">
				<div id="form_paciente-column" class="col-md-6">
					<div id="form_paciente-box" class="col-md-12">
						<h4 class="text-center text-info pt-2">Cadastramento de
							Usuário</h4>
						<form id="form_paciente-form" class="form"
							action="usuario/incluir" method="post">

							<div class="form-group">
								<label for="nome">Informe o Nome:</label> <input
									type="text" class="form-control" id="nome"
									name="nome">
							</div>

							<div class="form-group">
								<label for="nome">Informe Email:</label> <input
									type="text" class="form-control" id="email"
									name="email">
							</div>

							<div class="form-group">
								<label for="nome">Informe a Senha:</label> <input
									type="password" class="form-control" id="senha"
									name="senha">
							</div>

							<div class="form-group">
								<label for="nome">Informe o Git:</label> <input
									type="text" class="form-control" id="git"
									name="git">
							</div>

							<div class="form-group">

								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="Salvar">
							</div>
							<div id="register-link" class="text-right"></div>
						</form>
					</div>
				</div>
			</div>

			<c:if test="${empty lista}">
				<div class="alert alert-warning">
					<p>Não há pedidos cadastrados no sistema!</p>
				</div>
			</c:if>

		</div>
	</div>

</body>
</html>