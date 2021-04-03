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
							Pedidos</h4>
						<form id="form_paciente-form" class="form"
							action="/pedido/incluir" method="post">

							<div class="form-group">
								<label for="nome">Informe a Especialidade:</label> <input
									type="text" class="form-control" id="especialidade"
									name="especialidade">
							</div>

							<div class="form-group">
								<label for="nome">Informe o Veterinário:</label> <input
									type="text" class="form-control" id="veterinario"
									name="veterinario">
							</div>

							<div class="form-group">
								<label for="nome">Informe a Data:</label> <input type="date"
									class="form-control" id="data" name="data">
							</div>

							<div class="form-group">
								<label for="nome">Informe o Paciente:</label> <select
									class="form-control" name="paciente.id">

									<c:forEach var="pa" items="${pacientes}">
										<option value="${pa.id}">${pa.nome}</option>
									</c:forEach>
								</select>
							</div>

							<div class="form-check form-check-inline">
								<label for="nome">Emergência:</label> <input type="checkbox"
									class="form-check-input" id="emergencia" name="emergencia">
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
				<h4>Lista de Pedidos:</h4>
				<table class="table table-striped" custab>
					<thead>
						<tr>
							<th>Especialidade</th>
							<th>Paciente</th>
							<th>Veterinario</th>
							<th>Data</th>
							<th>Emergência</th>
							<th>Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pe" items="${lista}">
							<tr>
								<td>${pe.especialidade}</td>
								<td>${pe.paciente.nome}</td>
								<td>${pe.veterinario}</td>
								<td>${pe.data}</td>
								<td><c:if test="${pe.emergencia == true}">
							   Sim
						       </c:if> <c:if test="${pe.emergencia == false}">
								Não
						      </c:if></td>
								<td><a href="/pedido/${pe.id}/excluir"
									class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span>X</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>

			<c:if test="${empty lista}">
				<div class="alert alert-warning">
					<p>Não há pedidos cadastrados no sistema!</p>
				</div>
			</c:if>

		</div>
	</div>

</body>
</html>