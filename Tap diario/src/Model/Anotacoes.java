package Model;

public class Anotacoes {
	private int id_paginas;
	private int id_cadastro;
	private String data;
	private String assunto;
	private String mensagem;
	public int getId_paginas() {
		return id_paginas;
	}
	public void setId_paginas(int id_paginas) {
		this.id_paginas = id_paginas;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	public String getAssunto() {
		return assunto;
	}
	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}
	public int getId_cadastro() {
		return id_cadastro;
	}
	public void setId_cadastro(int id_cadastro) {
		this.id_cadastro = id_cadastro;
	}
	
	
}
