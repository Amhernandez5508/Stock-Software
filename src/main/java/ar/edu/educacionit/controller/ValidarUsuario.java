package ar.edu.educacionit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.edu.educacionit.dao.IUsuarioDAO;
import ar.edu.educacionit.dao.imp.UsuarioDAOImp;

/**
 * Servlet implementation class ValidarUsuario
 */
@WebServlet(name = "ValidarUsuario",urlPatterns = "/validarUsuario")
public class ValidarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombreUsuario=request.getParameter("email");
		String password=request.getParameter("password");
		
		IUsuarioDAO usuarioDAO = new UsuarioDAOImp();
		
		boolean existeUsuario = usuarioDAO.existeUsuario(nombreUsuario, password);
		if(existeUsuario) {
			request.getSession().setAttribute("usuario", nombreUsuario);
			response.sendRedirect(request.getContextPath()+"/principalMenu");
		}else {
			response.sendRedirect(request.getContextPath());
		}
		
	}

}
