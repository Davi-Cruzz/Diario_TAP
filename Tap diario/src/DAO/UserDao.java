/**
 * 
 */
package DAO;
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

}
