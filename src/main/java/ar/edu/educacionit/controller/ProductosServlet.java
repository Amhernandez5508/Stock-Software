package ar.edu.educacionit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.edu.educacionit.dao.GenericDAO;
import ar.edu.educacionit.dao.imp.ProductoDAOImp;
import ar.edu.educacionit.model.Producto;

/**
 * Servlet implementation class ProductosServlet
 */
@WebServlet(name = "productos", urlPatterns = { "/productos" })
public class ProductosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getSession(false) != null && request.getSession().getAttribute("usuario") != null) {
			
			GenericDAO<Producto, Integer> genericDAO = new ProductoDAOImp();
			request.setAttribute("products", genericDAO.getAll());
			request.getRequestDispatcher("/productos.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath());
		}
	}

}
