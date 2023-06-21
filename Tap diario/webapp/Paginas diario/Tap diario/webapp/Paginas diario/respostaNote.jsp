<%@page import="Model.Anotacoes" %>
<%@page import="Model.User" %>
<%@page import="DAO.DiarioDao" %>
<%@page import="DAO.UserDao" %>

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

Anotacoes notes = new Anotacoes();

//notes.setData(request.getParameter("data_e_hora"));
notes.setAssunto(request.getParameter("titulo"));
notes.setMensagem(request.getParameter("mensagem"));
notes.setId_cadastro(user.getId_cadastro());

System.out.println(user.getId_cadastro());

DiarioDao anotacao = new DiarioDao();

ok = anotacao.InserirPagina(notes);

if(ok){
%>
<script type="text/javascript">
	alert("Anotação salva com sucesso!!")
	window.location.href="meuDiario.jsp"
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Erro ao salvar nota!")
	window.location.href="anotacoes.html"
</script>
<% 
} 


%>
