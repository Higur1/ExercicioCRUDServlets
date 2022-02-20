<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/styles.css">
<title>Descricao Viagem</title>
</head>
<body>
	<div>
	<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<div align="center" class="container">
		<form action="viagem" method="post">
			<p class="title"><b>Viagem</b></p>
		<table>
			<tr>
				<td>
					<input class="id_input_data" type ="number" min="108" 
					step="1" id="codigo" name="codigo" placeholder="#Codigo">
				</td>
				<td>
					<input type="submit" id="botao" name="botao" value="Buscar">
				</td>
			</tr>
		</table>
		</form>
		<br />
		<c:if test="${not empty viagem}">
			<table border="1">
				<thead>
					<tr>
						<th><b>#codigo</b></th>
						<th><b>#Placa</b></th>
						<th><b>#Hora de Saida</b></th>
						<th><b>#Hora de Chegada</b></th>
						<th><b>#Origem</b></th>
						<th><b>#Destino</b></th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td align="center"><c:out value="${viagem.codigo} "></c:out></td>
							<td align="center"><c:out value="${viagem.placa} "></c:out></td>
							<td align="center"><c:out value="${viagem.hora_de_saida} "></c:out>:00</td>
							<td align="center"><c:out value="${viagem.hora_de_chegada} "></c:out>:00</td>
							<td align="center"><c:out value="${viagem.partida} "></c:out></td>
							<td align="center"><c:out value="${viagem.destino} "></c:out></td>
						</tr>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>