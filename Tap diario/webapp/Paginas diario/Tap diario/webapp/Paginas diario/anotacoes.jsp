<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Meu diário</title>
	<link rel="stylesheet" href="anotações.css">
	<script type="text/javascript">
		function dataHora()
		{
			let data = new Date();
			let ano = data.getFullYear();
			let mes = data.getMonth()+1
			let dia = data.getDate();
			let hora = data.getHours().toString().padStart(2, '0');
			let minutos = data.getMinutes().toString().padStart(2, '0');
			let segundos = data.getSeconds().toString().padStart(2, '0');
			document.getElementById("dataNote").innerHTML = `${dia}/${mes}/${ano} às ${hora}:${minutos}:${segundos}`;
			
		}
	</script>
	
	</head>
	<body onload="dataHora()">
		
		<main>
		<form name="formNote" id="idNote" action="respostaNote.jsp" method="POST" onload="">
		<br>
		<input type="text" name="titulo" id="titulo" placeholder="Insira o título(Máx.60 caracteres)" maxlength="60">
		<div id="divhora"><label id="dThora">Dia da anotação:<br><br><strong id="dataNote"></strong></label>
		</div>
		<textarea name="mensagem" id="note" rows="31" cols="100" minlength="30"></textarea>
		<br><br>
		<input type="submit" value="Terminar" name="salvar" id="salvar">
		</form>
	</main>
	
	 <a href="meuDiario.jsp">Cancelar</a>
	</body>
	</html>
