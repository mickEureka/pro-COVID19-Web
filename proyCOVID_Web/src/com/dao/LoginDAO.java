package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.util.Conexion;
import com.entidad.Administrador;

public class LoginDAO {
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public Administrador validar(String user, String pass) {
		Administrador adm = new Administrador();
		String sql = "select * from administrador where Usuario=? and contrasena=?";
		
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				adm.setId(rs.getInt("idAdministrador"));
				adm.setNombres(rs.getString("Nombres"));
				adm.setUsuario(rs.getString("Usuario"));
				adm.setContrase(rs.getString("contrasena"));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return adm;
	}
}
