package ar.edu.educacionit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CloseSessionServlet
 */
@WebServlet(name = "cerrarSesion", urlPatterns = { "/cerrarSesion" })
public class CloseSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro a cerrar session");
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath());
	}

}
