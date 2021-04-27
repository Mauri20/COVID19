package com.unab.tarea.negocio;

import com.unab.tarea.entidades.Beneficiario;
import com.unab.tarea.dao.*;

public class ClsBeneficiario {
	public Beneficiario Verificar(String Dui) {
		
		Beneficiario benefi= new Beneficiario();
		benefi=null;
		BeneficiarioDao benefDao= new BeneficiarioDao();
		
		benefi=benefDao.BuscarDui(Dui);
		if(benefi==null) {
			System.out.println("Usuario vacio");
		}
		return benefi;
	}
}
