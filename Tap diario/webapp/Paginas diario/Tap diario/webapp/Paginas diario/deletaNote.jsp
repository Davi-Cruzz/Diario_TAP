<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deletar anotação</title>
</head>
<body>
	<div>
		<form name="formDelete" id="idDelete" action="resposta_deletaNote.jsp" method="POST">
		<br><br>
		<label>Número da anotação que quer deletar:</label>
		<input type="text" name="numero" id="numero" placeholder="exemplo: 1">
		<br><br>
		<input type="submit" value="deletar" name="deletar" id="deletar">
		</form>
	</div>
</body>
</html>