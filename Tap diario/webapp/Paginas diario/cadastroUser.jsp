<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem vindo ao Mediari</title>
</head>
<body>
	<form name="formUser" id="idUser" action="respostaCadastro.jsp" method="POST">
	<label>Nome completo</label>
	<input type="text" name="nameUser" id="nameUser" placeholder="digite seu nome completo">
	<br><br>
	<label>E-mail</label>
	<input type="text" name="email" id="email" placeholder="exemplo@gmail.com">
	<br><br>
	<label>Senha</label>
	<input type="password" name="senhaUser" id="senhaUser" placeholder="crie sua senha">
	<br><br>
	<input type="submit" value="salvar" name="salvar" id="salvar">
	</form>
</body>
</html>