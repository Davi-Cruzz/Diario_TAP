package DAO;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.User;
import Util.Conexao;

public class LoginDao {

	public boolean verificaUser(User u) {
		Conexao con = null;
		int qnt = 0;
		
		try {
			con = new Conexao();
			ResultSet login = con.executeQuery("SELECT FROM * `cadastro_diario` WHERE `email` LIKE"
					+"'"+u.getEmail()+"' AND `senha` LIKE '"
					+u.getSenha()+"');");
			while(login.next()) {
				qnt++;
			}
			if(qnt == 0) {
				return false;
			}else {
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
			return false;
		}
	}
	
	public int UsuarioLogin(String email, String senha) {
		Conexao con = null;
		int qnt = 0;
		
		try {
			con = new Conexao();
			int id_user = 0;
			ResultSet login = con.executeQuery("SELECT * FROM `cadastro_diario` WHERE `email` LIKE '"+ email +"' AND `senha` LIKE '"+senha+"';");
			
			while(login.next()) {
				qnt++;
				id_user = login.getInt(1);
			}
			
			if (qnt == 0 || qnt > 1) {
				return -2;
			} else {
				return id_user;
			}
		} catch (SQLException e) {
			return -1;
		}
		
		
	}
}
