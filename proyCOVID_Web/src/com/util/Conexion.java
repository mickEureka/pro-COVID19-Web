package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	Connection con;
	public Conexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","ing.migue0147");
			
		} catch (Exception e) {
			System.out.println("Error" + e);
		}
	}
	
	public Connection getConnection() {
		return con;
	}
}
