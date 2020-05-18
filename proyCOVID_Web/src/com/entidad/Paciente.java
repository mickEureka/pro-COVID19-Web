package com.entidad;

public class Paciente {
	int idPaciente;
	String dni;
	String nombreApe;
	String edad;
	String telefono;
	String sexo;
	String direccion;
	

	public Paciente() {
	
	}

	public Paciente(int idPaciente, String dni, String nombreApe, String edad, String telefono, String sexo,
			String direccion) {
		super();
		this.idPaciente = idPaciente;
		this.dni = dni;
		this.nombreApe = nombreApe;
		this.edad = edad;
		this.telefono = telefono;
		this.sexo = sexo;
		this.direccion = direccion;
	}


	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombreApe() {
		return nombreApe;
	}

	public void setNombreApe(String nombreApe) {
		this.nombreApe = nombreApe;
	}

	public String getEdad() {
		return edad;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	
	
}
