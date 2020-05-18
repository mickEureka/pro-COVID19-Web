package com.controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdministradorDAO;
import com.dao.PacienteDAO;
import com.dao.SituacionMedicaDAO;
import com.entidad.Administrador;
import com.entidad.Paciente;
import com.entidad.SituacionMedica;

/**
 * Servlet implementation class ControladorPrinc
 */
@WebServlet("/ControladorPrinc")
public class ControladorPrinc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Administrador adm = new Administrador();
	AdministradorDAO dao = new AdministradorDAO();
	Paciente pac = new Paciente();
	PacienteDAO pdao = new PacienteDAO();
	
	SituacionMedica sm = new SituacionMedica();
	SituacionMedicaDAO sdao = new SituacionMedicaDAO();
	int idAdm;
	int idpac;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorPrinc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
		String menu = request.getParameter("menu");
    	String accion = request.getParameter("accion");
    	
    	if(menu.equals("Administradores")) {
    		switch(accion) {
    			case "Listar":
    				List lista = dao.listar();
    				request.setAttribute("administradores", lista);
    				break;
    			case "Agregar":
    				String nom = request.getParameter("txtNom");
    				String fono = request.getParameter("txtFono");
    				String usua = request.getParameter("txtUsuario");
    				String contra = request.getParameter("txtContras");
    				String estad = request.getParameter("txtEstado");
    				
    				adm.setNombres(nom);
    				adm.setFono(fono);
    				adm.setUsuario(usua);
    				adm.setContrase(contra);
    				adm.setEstado(estad);
    				dao.Agregar(adm);
    				request.getRequestDispatcher("ControladorPrinc?menu=Administradores&accion=Listar").forward(request, response);
    				break;
    				
    			case "Editar":
    				idAdm = Integer.parseInt(request.getParameter("id"));
    				Administrador admi = dao.listarId(idAdm);
    				request.setAttribute("administrador", admi);
    				request.getRequestDispatcher("ControladorPrinc?menu=Administradores&accion=Listar").forward(request, response);
    				break;
    			case "Actualizar":
    				String nom1 = request.getParameter("txtNom");
    				String fono1 = request.getParameter("txtFono");
    				String usua1 = request.getParameter("txtUsuario");
    				String contra1 = request.getParameter("txtContras");
    				String estad1 = request.getParameter("txtEstado");
    				
    				adm.setNombres(nom1);
    				adm.setFono(fono1);
    				adm.setUsuario(usua1);
    				adm.setContrase(contra1);
    				adm.setEstado(estad1);
    				adm.setId(idAdm);
    				dao.Actualizar(adm);
    				
    				request.getRequestDispatcher("ControladorPrinc?menu=Administradores&accion=Listar").forward(request, response);
    				break;
    				
    			case "Eliminar":
    				idAdm = Integer.parseInt(request.getParameter("id"));
    				dao.Eliminar(idAdm);
    				request.getRequestDispatcher("ControladorPrinc?menu=Administradores&accion=Listar").forward(request, response);
    				break;
    			default:
    				throw new AssertionError();
    		}
    		
    		
    		request.getRequestDispatcher("Administradores.jsp").forward(request, response);
    	}
    	if(menu.equals("Pacientes")) {
    		switch(accion) {
    		case "Listar":
				List lista = pdao.listar();
				request.setAttribute("pacientes", lista);
				break;
    		case "Eliminar":
				idpac = Integer.parseInt(request.getParameter("id"));
				pdao.Eliminar(idpac);
				request.getRequestDispatcher("ControladorPrinc?menu=Pacientes&accion=Listar").forward(request, response);
				break;
    		default:
				throw new AssertionError();	
    		}
    		
    		request.getRequestDispatcher("Pacientes.jsp").forward(request, response);
    	}
    	if(menu.equals("Situacion")) {
    		switch(accion) {
    		case "Listar":
				List lista = sdao.listar();
				request.setAttribute("situacion", lista);
				break;
    		default:
				throw new AssertionError();	
    		}
    		request.getRequestDispatcher("SituacioMedica.jsp").forward(request, response);
    	}
    	
    	if(menu.equals("Acercade")) {
    		request.getRequestDispatcher("AcercaDe.jsp").forward(request, response);
    	}
    	
	}

}
