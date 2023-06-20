package Model;

public class User {
	private int id_cadastro;
	private String nome_cad;
	private String email;
	private String senha;
	
	public int getId_cadastro() {
		return id_cadastro;
	}
	public void setId_cadastro(int id_cadastro) {
		this.id_cadastro = id_cadastro;
	}
	public String getNome_cad() {
		return nome_cad;
	}
	public void setNome_cad(String nome_cad) {
		this.nome_cad = nome_cad;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	

}
