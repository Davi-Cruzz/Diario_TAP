package Model;

public class Relacoes {
	private int id_relacoes;
	private int id_cadastro;
	private int id_paginas;
	private String nome_cad;
	private String email;
	private String assunto;
	private String data_horaEnvio;
	public int getId_relacoes() {
		return id_relacoes;
	}
	public void setId_relacoes(int id_relacoes) {
		this.id_relacoes = id_relacoes;
	}
	public int getId_cadastro() {
		return id_cadastro;
	}
	public void setId_cadastro(int id_cadastro) {
		this.id_cadastro = id_cadastro;
	}
	public int getId_paginas() {
		return id_paginas;
	}
	public void setId_paginas(int id_mensagem) {
		this.id_paginas = id_mensagem;
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
	public String getAssunto() {
		return assunto;
	}
	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}
	public String getData_horaEnvio() {
		return data_horaEnvio;
	}
	public void setData_horaEnvio(String data_horaEnvio) {
		this.data_horaEnvio = data_horaEnvio;
	}
	
	
}
