package DAO;
import java.sql.SQLException;

import Model.Anotacoes;
import Util.Conexao;

public class DiarioDao {

	public boolean InserirPagina(Anotacoes a) {
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO diario_paginas(assunto, mensagem)VALUES("
					+"'"+a.getAssunto()+"','"
					+a.getMensagem()+"');");
			return true;
		}catch(SQLException e){
			return false;
		}
	}
}
