<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="cadastro.css">
<meta charset="UTF-8">
<title>Bem vindo ao Mediari</title>
</head>
<body>
    <logos>
        <p class="texto1"> Diário virtual</p>
        <p class="Mediari">Mediari</p>
        </logos>
	<!--Área de cadastro -->
    <p id="cadastro">Cadastro</p>
    <main>
		<form name="formUser" id="idUser" action="respostaCadastro.jsp" method="POST">
        <div>
		   <label>Nome completo</label>
		    <input type="text" name="nameUser" id="nameUser" required>
        </div>
         <div>
		    <label>E-mail</label>
		    <input type="text" name="email" id="emailuser" required>
        </div>
		<div>
            <label>Senha</label>
		    <input type="password" name="senhaUser" id="senhaUser" required>
        </div>
		<input type="submit" value="salvar" name="salvar" id="salvar">
		</form> 
	</main>
</body>
</html>