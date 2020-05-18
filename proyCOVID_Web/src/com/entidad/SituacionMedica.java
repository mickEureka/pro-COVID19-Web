package com.entidad;

public class SituacionMedica {
	int idPaciente;
	String nomApe;
	String edad;
	String condicionM;
	String estadoM;
	
	public SituacionMedica() {
		super();
	}
	public SituacionMedica(int idPaciente, String nomApe, String edad, String condicionM, String estadoM) {
		super();
		this.idPaciente = idPaciente;
		this.nomApe = nomApe;
		this.edad = edad;
		this.condicionM = condicionM;
		this.estadoM = estadoM;
	}
	public int getIdPaciente() {
		return idPaciente;
	}
	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}
	public String getNomApe() {
		return nomApe;
	}
	public void setNomApe(String nomApe) {
		this.nomApe = nomApe;
	}
	public String getEdad() {
		return edad;
	}
	public void setEdad(String edad) {
		this.edad = edad;
	}
	public String getCondicionM() {
		return condicionM;
	}
	public void setCondicionM(String condicionM) {
		this.condicionM = condicionM;
	}
	public String getEstadoM() {
		return estadoM;
	}
	public void setEstadoM(String estadoM) {
		this.estadoM = estadoM;
	}
	
	
}
