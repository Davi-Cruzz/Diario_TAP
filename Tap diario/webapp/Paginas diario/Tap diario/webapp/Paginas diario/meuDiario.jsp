<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Util.Conexao" %>
<%@ page import="DAO.UserDao" %>
<%@ page import="Model.User" %>
    
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
        <link rel="stylesheet" href="meudiario.css">
        <title>Meu diário</title>
    </head>
    <body> 
        <a href="anotacoes.html">Nova anotação</a>
        <header>
            <p>Anotações</p>
        </header>
       
    </body>
</html>