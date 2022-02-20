<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/styles.css">
<title>Descricao Onibus</title>
</head>
<body>
	<div>
	<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<div align="center" class="container">
		<form action="onibus" method="post">
			<p class="title"><b>Onibus</b></p>
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
		<c:if test="${not empty onibus}">
			<table border="1">
				<thead>
					<tr>
						<th><b>#codigo</b></th>
						<th><b>#Motorista</b></th>
						<th><b>#Placa</b></th>
						<th><b>#Marca</b></th>
						<th><b>#Ano</b></th>
						<th><b>#Descricao</b></th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td align="center"><c:out value="${onibus.codigo} "></c:out></td>
							<td align="center"><c:out value="${onibus.motorista} "></c:out></td>
							<td align="center"><c:out value="${onibus.placa} "></c:out></td>
							<td align="center"><c:out value="${onibus.marca} "></c:out></td>
							<td align="center"><c:out value="${onibus.ano} "></c:out></td>
							<td align="center"><c:out value="${onibus.descricao} "></c:out></td>
						</tr>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>