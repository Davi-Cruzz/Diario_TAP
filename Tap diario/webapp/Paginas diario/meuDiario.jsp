<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Util.Conexao" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="DAO.*" %>
<%@ page import="Model.*" %>
    
<%

//validação de login

UserDao login = new UserDao();
User user = new User();
Integer id_user = (Integer)
session.getAttribute("id_cadastro");
try{
	if(id_user == -1 || id_user == null){
		response.sendRedirect("cadastroUser.jsp");
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


Conexao con = null;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minhas anotações</title>
<link rel="stylesheet" href="meudiario.css">
</head>
<body id="bodydiario">

<%
	DiarioDao notaDao = new DiarioDao();
	ArrayList<Anotacoes> notes = notaDao.ArrayListNotas(id_user);

	for(Anotacoes n: notes){
%>
	
<div class="notas">
	<div class="elementos"> 
		Título: <%= n.getAssunto()  %>
	</div> 
	<div class="elementos">
	 	Anotação: <p><%= n.getMensagem()  %></p> 
	 </div> 
	 
	 <a class="botaoLink" href="deletaNote.jsp?id_paginas=<%=n.getId_paginas() %>">Apagar</a>
	 <a class="botaoLink" href="alteraNote.jsp?id_paginas=<%=n.getId_paginas() %>">Editar</a>
</div>
<%} %>
	<a class="link2" href="anotacoes.html">Nova anotação</a>
	<a class="link3" href="cadastroUser.jsp">Sair</a>
</body>
</html>
