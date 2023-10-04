<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Util.Conexao" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="DAO.*" %>
<%@ page import="Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADM apenas</title>
</head>
<body>
	
<%
RelacaoDao relDAO = new RelacaoDao();
	
try{
	
	ArrayList<Relacoes> listar = relDAO.listarTitulos(); 
	
	if(listar != null && !listar.isEmpty()){
%>
	<table>
		<thead>
			<tr>
				<th>ID Usuário</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Assunto da anotação</th>
				<th>ID da anotação</th>
				<th>Horário da anotação</th>
			</tr>
		</thead>
		<tbody>
		<%
			for(Relacoes rel : listar){
				
		%>
			<tr>
				<td><%= rel.getId_cadastro()%></td>
				<td><%= rel.getNome_cad()%></td>
				<td><%= rel.getEmail()%></td>
				<td><%= rel.getAssunto()%></td>
				<td><%= rel.getId_paginas()%></td>
				<td><%= rel.getData_horaEnvio()%></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	
<%
	}else{
%>
	<p>Não há anotações cadastradas</p>
<% 
	}
	
}catch(Exception e){
%>	
		<p>Ocorreu um erro ao obter a lista</p>
<% 
}
%>	
</body>
</html>