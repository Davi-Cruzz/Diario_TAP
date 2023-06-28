<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DAO.UserDao" %>

<% 
	UserDao login = new UserDao();
	boolean ok = false;
	
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	ok = login.login(email, senha);
	
	if(ok){
		int id = login.UsuarioIdLogin(email, senha);
		if(id == 0){
			session.setAttribute("id_cadastro", -1);
%>
<script type="text/javascript">
	alert("Erro ao fazer login!")	
</script>
<%
			response.sendRedirect("cadastroUser.jsp");
		}else{
			session.setAttribute("id_cadastro", id);
			response.sendRedirect("meuDiario.jsp");
		}
	}else{
		session.setAttribute("id_cadastro", -1);
%>
<script type="text/javascript">
	alert("Erro ao fazer login!")
</script>


<%
		response.sendRedirect("cadastroUser.jsp");
	}
	

%>