<%@ page import="Model.Anotacoes" %>
<%@ page import="DAO.DiarioDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
DiarioDao diariodao = new DiarioDao();
Anotacoes notas = new Anotacoes();

System.out.println(notas = diariodao.listarNotas(Integer.parseInt(request.getParameter("id_paginas"))));
notas = diariodao.listarNotas(Integer.parseInt(request.getParameter("id_paginas")));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar anotação</title>
<link rel="stylesheet" href="anotações.css">

</head>
<body onload="dataHora()">
	<main>
		<form name="formNote" id="idNote" action="respostaAlteraNote.jsp" method="POST">
		<input type="text" name="idPage" id="idPage" disabled="disabled" value="<%=notas.getId_paginas()%>">
		<input type="hidden" name="hid_paginas" value="<%=notas.getId_paginas()%>">
		<br>
		<input type="text" name="titulo" id="titulo" placeholder="Insira o título(Máx.60 caracteres)" maxlength="60">
		
		<textarea name="mensagem" id="note" rows="31" cols="100" minlength="30"></textarea>
		<br><br>
		<input type="submit" value="Terminar" name="salvar" id="salvar">
		</form>
	</main>
	
</body>
</html>