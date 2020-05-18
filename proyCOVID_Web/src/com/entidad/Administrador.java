package com.entidad;

public class Administrador {
	int id;
	String nombres;
	String fono;
	String usuario;
	String contrase;
	String estado;
	
	public Administrador() {
		
	}

	public Administrador(int id, String nombres, String fono, String usuario, String contrase, String estado) {
		super();
		this.id = id;
		this.nombres = nombres;
		this.fono = fono;
		this.usuario = usuario;
		this.contrase = contrase;
		this.estado = estado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getFono() {
		return fono;
	}

	public void setFono(String fono) {
		this.fono = fono;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrase() {
		return contrase;
	}

	public void setContrase(String contrase) {
		this.contrase = contrase;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
	
}
