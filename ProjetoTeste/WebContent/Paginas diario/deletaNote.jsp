<%@ page import="DAO.DiarioDao" %>
<%@ page import="Model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
boolean ok = false;
DiarioDao diariodao = new DiarioDao();
User user = new User();
Anotacoes nota = new Anotacoes();
ok = diariodao.deletarNota(Integer.parseInt(request.getParameter("id_paginas")));
System.out.println(user.getId_cadastro());
System.out.println(nota.getId_paginas());

if(ok){
%>
<script type="text/javascript">
	alert("Anotação deletado com sucesso!");
	window.location.href="meuDiario.jsp";
</script>
	
<%}else{ %>
<script type="text/javascript">
	alert("Erro ao deletar anotação!");
	window.location.href="meuDiario.jsp";
</script>

<%
} 
%>