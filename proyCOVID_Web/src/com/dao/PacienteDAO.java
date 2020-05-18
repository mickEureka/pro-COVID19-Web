package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.Conexion;
import com.entidad.Paciente;

public class PacienteDAO {
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int respuesta;
	
	//Listar
		public List listar() {
			String sql = "select * from paciente";
			List<Paciente> lista = new ArrayList<>();
			try {
				con = cn.getConnection();
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Paciente pac = new Paciente();
					pac.setIdPaciente(rs.getInt(1));
					pac.setDni(rs.getString(2));
					pac.setNombreApe(rs.getString(3));
					pac.setEdad(rs.getString(4));
					pac.setTelefono(rs.getString(5));
					pac.setSexo(rs.getString(6));
					pac.setDireccion(rs.getString(7));
					lista.add(pac);
					
				}			
			} catch (Exception e) {
				e.printStackTrace();
			}
			return lista;
		}
		
		//Eliminar
		public void Eliminar(int id) {
			String sql = "delete from paciente where idpaciente="+ id;
			try {
				con = cn.getConnection();
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

}
