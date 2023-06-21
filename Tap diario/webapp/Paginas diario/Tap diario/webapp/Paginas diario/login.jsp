<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<title>Bem vindo ao Mediari</title>
</head>
<body>
    <logos>
    <p class="texto1"> Diário virtual</p>
    <p class="Mediari">Mediari</p>
    <p id="login">Login</p>
    </logos>
    <a href="Cadastro.html">CADASTRA-SE</a>
	<!--Área de login -->
    <main>
		<form name="formUser" id="idUser" action="respostaLogin.jsp" method="POST">
            </div>
            <div>
                <label>E-mail</label>
                <input type="email" name="email" id="email" required>
            </div>
             <div>
                <label>Senha</label>
                <input type="password" name="senhaUser" id="senhaUser" required>
            </div>
		<input type="submit" value= "Entrar" name="logaar" id="logar">
		</form>

</main>
</body>
</html>