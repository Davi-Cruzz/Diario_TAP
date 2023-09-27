<%@ page import="DAO.*" %>
<%@ page import="Model.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
boolean ok = false;

//validação de login
UserDao login = new UserDao();
User user = new User();
Integer id_user = (Integer)

session.getAttribute("id_cadastro");
try{
	if(id_user == -1 || id_user == null || id_user == 0){
		response.sendRedirect("meuDiario.jsp");
	}else{
		try{
			user = login.retornaUser(id_user);
		}catch(NullPointerException e){
			out.println("Erro");
		}
	}
}catch(NullPointerException e){
	response.sendRedirect("cadastroUser.jsp");
}

Anotacoes nota = new Anotacoes();
nota.setId_paginas(Integer.parseInt(request.getParameter("hid_paginas")));
nota.setAssunto(request.getParameter("titulo"));
nota.setMensagem(request.getParameter("mensagem"));

DiarioDao diario = new DiarioDao();
System.out.println(nota.getId_paginas());
ok = diario.alterarNota(nota);

if(ok){
%>	
<script type="text/javascript">
	alert("Anotação Alterada Com Sucesso!");
	window.location.href="meuDiario.jsp";
</script>
	
<%}else{%>
<script type="text/javascript">
	alert("Erro ao alterar anotação!");
	window.location.href="meuDiario.jsp";
</script>


<%	
}
%>