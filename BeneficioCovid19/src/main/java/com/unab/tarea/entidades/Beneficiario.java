package com.unab.tarea.entidades;

import java.util.Date;

public class Beneficiario {
	private int Id;
	private String Nombre;
	private String Apellido;
	private String Direccion;
	private Date FechaNac;
	private String Telefono;
	private String Dui;
	private String Nit;
	private String Beneficio;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getApellido() {
		return Apellido;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public Date getFechaNac() {
		return FechaNac;
	}
	public void setFechaNac(Date fechaNac) {
		FechaNac = fechaNac;
	}
	public String getTelefono() {
		return Telefono;
	}
	public void setTelefono(String telefono) {
		Telefono = telefono;
	}
	public String getDui() {
		return Dui;
	}
	public void setDui(String dui) {
		Dui = dui;
	}
	public String getNit() {
		return Nit;
	}
	public void setNit(String nit) {
		Nit = nit;
	}
	public String getBeneficio() {
		return Beneficio;
	}
	public void setBeneficio(String beneficio) {
		Beneficio = beneficio;
	}
}
