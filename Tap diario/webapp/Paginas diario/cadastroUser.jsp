<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Bem vindo ao Mediari</title>
	<link rel="stylesheet" href="cadastro.css">
	</head>
	<body id="loginecadastro">
		   <div class="container">
			<p class="texto texto1"> Diário virtual</p>
			<p class="texto texto2">Mediari</p>
		   </div>
		<!--Área de cadastro -->
			<main>
				<form name="formUser" id="idUser" action="respostaCadastro.jsp" method="POST">
				<div>
					<label>Nome completo</label>
					<input type="text" name="nameUser" id="nameUser" required>
				</div>
				<div>
					<label>E-mail</label>
					<input type="email" name="email" id="email" required>
				</div>
				<div>
				<label>Senha</label>
				<input type="password" name="senhaUser" id="senhaUser"  required>
				</div>
				<input type="submit" value="salvar" name="salvar" id="salvar">
				</form>
			</main>
		
		
		
		<!--Área de login -->
			<main class="login">
				<form name="formUser" id="idUser2" action="respostaLogin.jsp" method="POST">
				<div>		
					<label>Se você já é cadastrado:</label>
					<br><br>
					<label>E-mail</label>
					<input type="email" name="email" id="email2" required>
				
				</div>
				<div>
				<label>Senha</label>
				<input type="password" name="senha" id="senhaUser2" required>		
				
	</div>
				<input type="submit" value="logar" name="logar" id="logar">
				</form>
			</main>
				
	</body>
	</html>