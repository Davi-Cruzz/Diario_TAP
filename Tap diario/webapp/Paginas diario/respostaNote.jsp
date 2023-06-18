<%@page import="Model.Anotacoes" %>
<%@page import="DAO.DiarioDao" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

boolean ok = false;

Anotacoes notes = new Anotacoes();

//notes.setData(request.getParameter("data_e_hora"));
notes.setAssunto(request.getParameter("titulo"));
notes.setMensagem(request.getParameter("mensagem"));

DiarioDao anotacao = new DiarioDao();
ok = anotacao.InserirPagina(notes);

if(ok){
%>
<script type="text/javascript">
	alert("Anotação salva com sucesso!!")
	window.location.href="anotacoes.html"
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Erro ao salvar nota!")
	window.location.href="anotacoes.html"
</script>
<% 
} 


%>
