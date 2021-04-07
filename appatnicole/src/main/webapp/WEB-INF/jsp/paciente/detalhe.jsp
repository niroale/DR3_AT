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

			<form action="/home">
				<div class="form-group">
					<button id="home" class="btn btn-light" href="/home">Home</button>
				</div>
			</form>

			<div id="form_paciente-row"
				class="row justify-content-center align-items-center">
				<div id="form_paciente-column" class="col-md-6">
					<div id="form_paciente-box" class="col-md-12">
						<h4 class="text-center text-info pt-2">Cadastramento de
							Pacientes</h4>
						<form id="form_paciente-form" class="form"
							action="/paciente/incluir" method="post">

							<div class="form-group">
								<label for="nome">Informar nome:</label> <input type="text"
									class="form-control" id="nome" name="nome">
							</div>

							<div class="form-group">
								<label for="nome">Informar idade:</label> <input type="number"
									class="form-control" id="idade" name="idade">
							</div>

							<div class="form-group">
								<label for="nome">Informar peso:</label> <input type="number"
									step="any" class="form-control" id="peso" name="peso">
							</div>

							<div class="form-group">
								<label for="nome">Informar raca:</label> <input type="text"
									class="form-control" id="raca" name="raca">
							</div>

							<div class="form-check form-check-inline">
								<label for="nome">Castrado:</label> <input type="checkbox"
									class="form-check-input" id="castrado" name="castrado">
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
			<c:if test="${not empty lista}">
				<h4>Lista de Pacientes:</h4>
				<table id="tabela" class="table table-striped">
					<thead>
						<tr>
							<th>Paciente</th>
							<th>Idade</th>
							<th>Peso</th>
							<th>Raca</th>
							<th>Castrado</th>
							<th>Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pa" items="${lista}">
							<tr>
								<td>${pa.nome}</td>
								<td>${pa.idade}</td>
								<td>${pa.peso}</td>
								<td>${pa.raca}</td>
								<td><c:if test="${pa.castrado == true}">
								 Sim
						         </c:if> <c:if test="${pa.castrado == false}">
								 Não
						          </c:if></td>
								<td><a href="/paciente/${pa.id}/excluir"
									class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span>X</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>

			<c:if test="${empty lista}">
				<div class="alert alert-warning">
					<p>Não há pacientes cadastrados no sistema!</p>
				</div>
			</c:if>

			<c:if test="${not empty msg}">
				<div class="alert alert-danger">
					<strong> </strong> ${msg}
				</div>
			</c:if>

		</div>
	</div>

</body>
</html>