package com.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.LoginDAO;
import com.entidad.Administrador;

/**
 * Servlet implementation class Validar
 */
@WebServlet("/Validar")
public class Validar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	LoginDAO adao = new LoginDAO();
	Administrador adm = new Administrador();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validar() {
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
		
		String accion = request.getParameter("accion");
		if(accion.equalsIgnoreCase("Ingresar")) {
			String user = request.getParameter("txtusuario");
			String pass = request.getParameter("txtcontra");
			adm = adao.validar(user, pass);
			if(adm.getUsuario() != null) {
				request.setAttribute("Usuario", adm);
				request.getRequestDispatcher("ControladorLogin?accion=Principal").forward(request, response);
			}
			else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
		else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
