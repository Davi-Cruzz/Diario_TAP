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
</head>
<body>
<%
	DiarioDao notaDao = new DiarioDao();
	ArrayList<Anotacoes> notes = notaDao.ArrayListNotas();

	for(Anotacoes n: notes){
%>
<div> Título: <%= n.getAssunto()  %> <div> Anotação: <%= n.getMensagem()  %> </div> Nº: <%= n.getId_paginas()  %></div>
<%} %>
	<a href="deletaNote.jsp">Deletar anotação</a>
	<a href="anotacoes.html">Nova anotação</a>
	<a href="cadastroUser.jsp">Sair</a>
</body>
</html>