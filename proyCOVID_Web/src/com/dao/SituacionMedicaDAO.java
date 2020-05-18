package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.Conexion;
import com.entidad.Paciente;
import com.entidad.SituacionMedica;

public class SituacionMedicaDAO {
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int respuesta;
	
	//Listar
		public List listar() {
			String sql = "select idpaciente,nombresApellidos,edad,condMedica,Estado from paciente";
			List<SituacionMedica> lista = new ArrayList<>();
			try {
				con = cn.getConnection();
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					SituacionMedica pac = new SituacionMedica();
					pac.setIdPaciente(rs.getInt(1));
					pac.setNomApe(rs.getString(2));
					pac.setEdad(rs.getString(3));
					pac.setCondicionM(rs.getString(4));
					pac.setEstadoM(rs.getString(5));
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
