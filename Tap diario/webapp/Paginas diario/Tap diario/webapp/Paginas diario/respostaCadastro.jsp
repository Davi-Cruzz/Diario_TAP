<%@page import="DAO.UserDao"%>
<%@page import="Model.User" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 

boolean ok = false;

User user = new User();

user.setNome_cad(request.getParameter("nameUser"));
user.setEmail(request.getParameter("email"));
user.setSenha(request.getParameter("senhaUser"));

UserDao userDao = new UserDao();
ok = userDao.InserirUser(user);

if(ok){
%>
<script type="text/javascript">
	alert("Usuário cadastrado com sucesso!!")
	window.location.href="cadastroUser.jsp"
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Erro ao cadastrar usuário!")
	window.location.href="cadastroUser.jsp"
</script>
<% 
} 
%>