<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem vindo ao Mediari</title>
</head>
<body>
	<!--Área de cadastro -->
	<div>
		<form name="formUser" id="idUser" action="respostaCadastro.jsp" method="POST">
		<label>Nome completo</label>
		<input type="text" name="nameUser" id="nameUser" placeholder="digite seu nome completo">
		<br><br>
		<label>E-mail</label>
		<input type="email" name="email" id="email" placeholder="exemplo@gmail.com">
		<br><br>
		<label>Senha</label>
		<input type="password" name="senhaUser" id="senhaUser" placeholder="crie sua senha">
		<br><br>
		<input type="submit" value="salvar" name="salvar" id="salvar">
		</form>
	</div>
	
	
	
	<!--Área de login -->
	<div>
		<form name="formUser" id="idUser2" action="respostaLogin.jsp" method="POST">
		<br><br>
		<label>Se você já é cadastrado:</label>
		<br><br>
		<label>E-mail</label>
		<input type="email" name="email" id="email2" placeholder="exemplo@gmail.com">
		<br><br>
		<label>Senha</label>
		<input type="password" name="senha" id="senhaUser2" placeholder="crie sua senha">
		<br><br>
		<input type="submit" value="logar" name="logar" id="logar">
		</form>
	</div>
</body>
</html>