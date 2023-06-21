package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Anotacoes;
import Util.Conexao;

public class DiarioDao {
	//CREATE
	public boolean InserirPagina(Anotacoes a) {
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO diario_paginas(id_cadastro, assunto, mensagem)VALUES("
					+"'"+a.getId_cadastro()+"','"
					+a.getAssunto()+"','"
					+a.getMensagem()+"');");
			return true;
		}catch(Exception e){
			return false;
		}
	}
	//READ
public Anotacoes listarNotas(int id) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT `assunto`, `mensagem` FROM diario_paginas WHERE id_cadastro = "+id);
			result.next();
			Anotacoes notes = new Anotacoes();
			notes.setAssunto("assunto");
			notes.setMensagem("mensagem");
			return notes;
		}catch(Exception e) {
			System.out.println("Erro ao listar as coisas"+e);
			return null;
		}
	}

public boolean deletarNota(int id) {
	Conexao con = null;
	try {
		con = new Conexao();
		con.executeUpdate("DELETE FROM diario_paginas WHERE id_cadastro="+id);
		return true;
	}catch(Exception e) {
		System.out.println("Erro ao apagar nota");
		return false;
		}
	}

public ArrayList<Anotacoes> ArrayListNotas(){
	Conexao con = null;
	try {
		con = new Conexao();
		ResultSet result = con.executeQuery("SELECT * FROM diario_paginas;");
		ArrayList<Anotacoes> listaNotas = new ArrayList<Anotacoes>();
		int i=0;
		
		while(result.next()) {
			Anotacoes notes = new Anotacoes();
			notes.setId_paginas(result.getInt("id_paginas"));
			notes.setId_cadastro(result.getInt("id_cadastro"));
			notes.setAssunto(result.getString("assunto"));
			notes.setMensagem(result.getString("mensagem"));
			listaNotas.add(i, notes);
			i++;
	}
		return listaNotas;
	}catch(Exception e) {
		System.out.println("Erro ao listar anotacoes"+e);
		return null;
		}
	}
}
