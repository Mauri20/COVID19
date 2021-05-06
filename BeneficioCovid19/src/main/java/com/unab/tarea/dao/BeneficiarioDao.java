package com.unab.tarea.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.unab.tarea.conexion.Conexion;
import com.unab.tarea.entidades.Beneficiario;

public class BeneficiarioDao {
	Conexion cn = new Conexion();
    Connection con = cn.RetornarConexion();
    
	public Beneficiario BuscarDui(String dui) {
		Beneficiario benef= new Beneficiario();
		try {
            CallableStatement statement = con.prepareCall("call sp_s_persona(?);");
            statement.setString("pDui", dui);
            ResultSet res = statement.executeQuery();
            while (res.next()) {
            	benef.setId(res.getInt("idpersona"));
            	benef.setNombre(res.getString("nombre"));;
            	benef.setApellido(res.getString("apellido"));;
            	benef.setDireccion(res.getString("direccion"));;
            	benef.setFechaNac(res.getDate("fechanac"));;
            	benef.setTelefono(res.getString("telefono"));;
            	benef.setDui(res.getString("dui"));;
            	benef.setNit(res.getString("nit"));;
            	benef.setBeneficio(res.getString("beneficio"));;
            }
        } catch (Exception e) {
        	System.out.println("No se encontró el Beneficiario" + e);
        }
		return benef;
	}
}
