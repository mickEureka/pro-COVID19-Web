package com.entidad;

public class Distrito {
	int idDistrito;
	String nombre;
		
	public Distrito() {
		super();
	}

	public Distrito(int idDistrito, String nombre) {
		super();
		this.idDistrito = idDistrito;
		this.nombre = nombre;
	}

	public int getIdDistrito() {
		return idDistrito;
	}

	public void setIdDistrito(int idDistrito) {
		this.idDistrito = idDistrito;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
