<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>
<%@page import="DAO.UserDao" %>

<% 
boolean ok = false;

//validação de login
UserDao login = new UserDao();
User user = new User();
Integer id_user = (Integer)

session.getAttribute("id_user");
try{
	if(id_user == -1 || id_user == null){
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

%>