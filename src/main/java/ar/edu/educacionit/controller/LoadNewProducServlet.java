package ar.edu.educacionit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadNewProducServlet
 */
@WebServlet(description = "formNewProduct", urlPatterns = { "/formNewProduct" })
public class LoadNewProducServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getSession(false) != null && request.getSession().getAttribute("usuario") != null) {
			request.getRequestDispatcher("/nuevoproducto.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath());
		}
	}

}
