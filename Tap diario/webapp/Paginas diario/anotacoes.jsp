<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meu diário</title>

<script type="text/javascript">
	function dataHora()
	{
		let data = new Date();
		let ano = data.getFullYear().toString()
		let mes = data.getMonth().toString()
		let dia = data.getDate().toString()
		let hora = data.getHours().toString()
		let minutos = data.getMinutes().toString()
		let dataAtual = hora +":"+ minutos +". "+ dia +"/"+ mes +"/"+ ano;
		document.getElementById("dataNote").innerHTML = "${dataAtual}";
		
	}
</script>

</head>
<body onload="dataHora()">
	<form name="formNote" id="idNote" action="respostaNote.jsp" method="POST" onload="">
	<label>Título da anotação:</label>
	<br>
	<input type="text" name="titulo" id="titulo" placeholder="ex: lição de casa">
	<label id="dThora">Horário da anotação:<strong id="dataNote"></strong></label>
	
	<br><br>
	<label>Anotação:</label>
	<br>
	<textarea id="note" name="mensagem" rows="20" cols="50">
	Digite a ideia que quer guardar...
	</textarea>
	<br><br>
	<input type="submit" value="Salvar anotação" name="salvar" id="salvar" onclick="dataHora()">
	</form>
</body>
</html>
