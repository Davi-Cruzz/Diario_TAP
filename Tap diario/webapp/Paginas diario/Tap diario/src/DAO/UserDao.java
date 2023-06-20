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
		user.setId_cadastro(res.getInt("id_cadastro"));
		
		return user;
	}

}
