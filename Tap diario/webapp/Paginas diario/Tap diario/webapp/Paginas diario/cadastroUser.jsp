<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem vindo ao Mediari</title>
<link rel="stylesheet" href="cadastro.css">
</head>
<body>
		<div>
        <p class="texto1"> Diário virtual</p>
        <p class="Mediari">Mediari</p>
        </div>
        <p id="cadastro">Cadastro</p>
	<!--Área de cadastro -->
		<main>
			<form name="formUser" id="idUser" action="respostaCadastro.jsp" method="POST">
			<div>
				<label>Nome completo</label>
				<input type="text" name="nameUser" id="nameUser" placeholder="digite seu nome completo">
			</div>
			<div>
				<label>E-mail</label>
				<input type="email" name="email" id="email" placeholder="exemplo@gmail.com">
			</div>
			<div>
			<label>Senha</label>
			<input type="password" name="senhaUser" id="senhaUser" placeholder="crie sua senha">
			</div>
			<input type="submit" value="salvar" name="salvar" id="salvar">
			</form>
		</main>
	
	
	
	<!--Área de login -->
		<main class="esquerda">
			<form name="formUser" id="idUser2" action="respostaLogin.jsp" method="POST">
			<div>		
				<label>Se você já é cadastrado:</label><br>
				<label>E-mail</label>
				<input type="email" name="email" id="email2" placeholder="exemplo@gmail.com">
			
			</div>
			<div>
			<label>Senha</label>
			<input type="password" name="senha" id="senhaUser2" placeholder="entre com sua senha">		
			<input type="submit" value="logar" name="logar" id="logar">
			</div>
			</form>
		</main>
			
</body>
</html>