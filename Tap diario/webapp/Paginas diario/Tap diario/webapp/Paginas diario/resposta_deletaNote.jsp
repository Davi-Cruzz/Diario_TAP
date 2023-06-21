<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.DiarioDao" %>

<%
boolean ok = false;
DiarioDao diariodao = new DiarioDao();
ok = diariodao.deletarNota(Integer.parseInt(request.getParameter("numero")));

if(ok){
%>
<script type="text/javascript">
	alert("Anotação Deletado Com Sucesso!");
	window.location.href="meuDiario.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Erro ao deletar anotação!");
	window.location.href="deletaNote.jsp";
</script>
<%
}


%>

