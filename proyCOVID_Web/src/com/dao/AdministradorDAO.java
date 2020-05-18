package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.config.Conexion;
import com.entidad.Administrador;

public class AdministradorDAO {
	
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int respuesta;
	
	//Operaciones CRUD
	
	//Listar
	public List listar() {
		String sql = "select * from administrador";
		List<Administrador> lista = new ArrayList<>();
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Administrador adm = new Administrador();
				adm.setId(rs.getInt(1));
				adm.setNombres(rs.getString(2));
				adm.setFono(rs.getString(3));
				adm.setUsuario(rs.getString(4));
				adm.setContrase(rs.getString(5));
				adm.setEstado(rs.getString(6));
				lista.add(adm);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	//Agregar
	public int Agregar(Administrador adm) {
		String sql ="insert into administrador(Nombres,Telefono,Usuario,contrasena,Estado)values(?,?,?,?,?)";
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, adm.getNombres());
			ps.setString(2, adm.getFono());
			ps.setString(3, adm.getUsuario());
			ps.setString(4, adm.getContrase());
			ps.setString(5, adm.getEstado());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}
	
	public Administrador listarId(int id){
		Administrador adm = new Administrador();
		String sql = "select * from administrador where idAdministrador=" + id;
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				adm.setNombres(rs.getString(2));
				adm.setFono(rs.getString(3));
				adm.setUsuario(rs.getString(4));
				adm.setContrase(rs.getString(5));
				adm.setEstado(rs.getString(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adm;
	}
	
	//Actualizar
	public int Actualizar(Administrador adm) {
		String sql ="update administrador set Nombres=?,Telefono=?,Usuario=?,contrasena=?,Estado=? where idAdministrador=?";
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, adm.getNombres());
			ps.setString(2, adm.getFono());
			ps.setString(3, adm.getUsuario());
			ps.setString(4, adm.getContrase());
			ps.setString(5, adm.getEstado());
			ps.setInt(6, adm.getId());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}
	
	//Eliminar
	public void Eliminar(int id) {
		String sql = "delete from administrador where idAdministrador="+ id;
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
