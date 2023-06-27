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
		
		<main id="mainA">
			<a id= "cancelar" href="meuDiario.jsp">Cancelar</a>
		<form name="formNote" id="idNote" action="respostaNote.jsp" method="POST" onload="">
		<input type="text" name="titulo" id="titulo" placeholder="Insira o título(Máx.60 caracteres)" maxlength="60">
		<div id="divhora"><label id="dThora">Dia da anotação:<br><br><strong id="dataNote"></strong></label>
		</div>
		<textarea name="mensagem" id="note" rows="20" cols="50" minlength="10"></textarea>
		<input type="submit" value="Terminar" name="salvar" id="salvar">
		</form>
	</main>
	
	 
	</body>
	</html>
