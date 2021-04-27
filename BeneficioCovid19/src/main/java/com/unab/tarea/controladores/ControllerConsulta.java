package com.unab.tarea.controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unab.tarea.entidades.Beneficiario;
import com.unab.tarea.negocio.ClsBeneficiario;

/**
 * Servlet implementation class ControllerConsulta
 */
public class ControllerConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerConsulta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		HttpSession sesion= request.getSession(true);
		
		String btnCerrar= request.getParameter("btncerrar");
		if(btnCerrar!=null) {
			response.sendRedirect("index.jsp");
			sesion.invalidate();
		}else {
			//Obtengo los datos
			String dui= request.getParameter("dui");
			//Capa Negocio
			ClsBeneficiario clsBenef= new ClsBeneficiario();
			Beneficiario ben= new Beneficiario();
			ben=clsBenef.Verificar(dui);
			
			//Controlar si tiene Beneficio
			if(ben.getBeneficio()!=null){
				System.out.println(ben.getBeneficio());
				if(ben.getBeneficio().equals("1")) {
					System.out.println("Con Beneficio");
					//Controlar Sesiones
					String nombre= ben.getNombre()+" "+ben.getApellido();
					
					sesion.setAttribute("benef", nombre);
					
					response.sendRedirect("beneficiado.jsp");
				}else if(ben.getBeneficio().equals("0")) {
					System.out.println("Sin Beneficio");
					response.sendRedirect("noBeneficiado.jsp");
				}
			}else {
				System.out.println("Error2");
				response.sendRedirect("error.jsp");
			}
		}
	}

}
