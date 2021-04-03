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

	<div id="login">
		<div class="container">
			<h3 class="text-center text-white pt-5">Clínica ProntoPet</h3>
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="/usuario/login"
							method="post">
							<h3 class="text-center text-info">Login</h3>

							<c:if test="${not empty mensagem}">
								<div class="alert alert-warning">
									<strong>Atenção!</strong> ${mensagem}
								</div>
							</c:if>

							<div class="form-group">
								<label for="nome" class="text-info">Usuário:</label><br> <input
									type="email" name="email" id="email" class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Senha:</label><br>
								<input type="password" name="senha" id="senha"
									class="form-control">
							</div>

							<div class="form-group">

								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="Acessar">
							</div>
							<div id="register-link" class="text-right">
						</form>
						<form id="login-form" class="form" action="/usuario" method="get">
							<c:if test="${not empty mensagem}">
								<div class="alert alert-warning">
									<strong>Atenção!</strong> ${mensagem}
								</div>
							</c:if>

							<div class="form-group">
							<p class="text-center text-info">Novo Usuário</p>
								<input type="submit" name="submit" class="btn btn-info btn-md "
									value="Cadastrar">
							</div>
							<div id="register-link" class="text-center"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>