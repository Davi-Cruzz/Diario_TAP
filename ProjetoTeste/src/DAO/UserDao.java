/**
 * 
 */
package DAO;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.User;
import Util.Conexao;

public class UserDao {

	public boolean InserirUser(User u){
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO cadastro_diario(nome_cad, email, senha) VALUES ("
					+ "'" + u.getNome_cad() + "','"
					+ u.getEmail() + "','"
					+ u.getSenha() +"');");
			return true;
		}catch(SQLException e){
			return false;
		}

	}
	public User retornaUser(int id) throws SQLException {
		String sql = "SELECT * FROM `cadastro_diario` WHERE id_cadastro="+id;
		Conexao con = new Conexao();
		User user = new User();
		ResultSet res = con.executeQuery(sql);
		res.next();
		user.setId_cadastro(res.getInt("id_cadastro"));
		user.setNome_cad(res.getString("nome_cad"));
		user.setEmail(res.getString("email"));
		user.setSenha(res.getString("senha"));
		
		return user;
	}
	public boolean login(String email, String senha) {
		Conexao con = null;
		int qnt = 0;
		try {
			con = new Conexao();
			ResultSet login = con.executeQuery("SELECT * FROM `cadastro_diario` WHERE email LIKE '"+ email +"' AND senha LIKE '"+senha+"';");
			
			while(login.next()) {
				qnt++;
			}
			
			if (qnt == 0 || qnt > 1) {
				return false;
			} else {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
	public int UsuarioIdLogin(String email, String senha) {
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
