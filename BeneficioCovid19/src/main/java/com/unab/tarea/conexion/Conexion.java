package com.unab.tarea.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	private Connection conec;

	public Conexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conec = DriverManager.getConnection("jdbc:mysql://localhost/benecovid19", "root", "root");
			System.out.println("CONECTADO A BENECOVID19");

		} catch (Exception e) {
			System.out.println("ERROR DE CONEXION A LA BD " + e);
		}
	}

	public Connection RetornarConexion() {
		return conec;
	}
}
