<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meu diário</title>

</head>
<body>
	<form name="formNote" id="idNote" action="respostaNote.jsp" method="POST" onload="">
	<label>Título da anotação:</label>
	<br>
	<input type="text" name="titulo" id="titulo" placeholder="ex: lição de casa">	
	<br><br>
	<label>Anotação:</label>
	<br>
	<textarea id="note" name="mensagem" rows="20" cols="50"></textarea>
	<br><br>
	<input type="submit" value="Salvar anotação" name="salvar" id="salvar">
	</form>
</body>
</html>
