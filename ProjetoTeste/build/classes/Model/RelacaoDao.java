package DAO;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Relacoes;
import Util.Conexao;

public class RelacaoDao {
	public ArrayList<Relacoes> listarTitulos(){
		Conexao con = null;
		try {
			con = new Conexao();
			ArrayList<Relacoes> veTudo = new ArrayList<>();
			ResultSet result = con.executeQuery("SELECT diario_paginas.assunto, diario_paginas.data_horaEnvio,"+
					" diario_paginas.id_paginas, cadastro_diario.nome_cad, cadastro_diario.email, cadastro_diario.id_cadastro FROM cadastro_diario "+
					"INNER JOIN diario_paginas on cadastro_paginas.id_cadastro = diario_paginas.id_cadastro");
			int i  = 0;
			while(result.next()){
				Relacoes relacao = new Relacoes();
				relacao.setId_paginas(result.getInt("id_paginas"));
				relacao.setId_cadastro(result.getInt("id_cadastro"));
				relacao.setAssunto(result.getString("assunto"));
				relacao.setNome_cad(result.getString("nome_cad"));
				relacao.setEmail(result.getString("email"));
				relacao.setData_horaEnvio(result.getString("data_horaEnvio"));
				veTudo.add(i, relacao);
				i++;
			}
			return veTudo;
		}catch(Exception e){
			System.out.println("Erro ao listar anotações"+e);
			return null;
		}
		
		}
	
	public boolean InserirRelacao(Relacoes r) {
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO relacao_assuntos(id_cadastro, id_paginas, id_relacao, assunto, nome_cad, email, data_horaEnvio) VALUES("
					+"'"+r.getId_cadastro()+"',"
					+"'"+r.getId_paginas()+"',"
					+"'"+r.getId_relacoes()+"',"
					+"'"+r.getAssunto()+"',"
					+"'"+r.getNome_cad()+"',"
					+"'"+r.getEmail()+"',"
					+"'"+r.getData_horaEnvio()+"');");
			
			return true;
		}catch(Exception e) {
			
			return false;
		}
		
	}
}
