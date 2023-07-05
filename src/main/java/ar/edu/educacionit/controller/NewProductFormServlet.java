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
 * Servlet implementation class NewProductFormServlet
 */
@WebServlet(name = "registrarProducto", urlPatterns = { "/registrarProducto" })
public class NewProductFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("txtNombre");
		double precio = Double.parseDouble(request.getParameter("txtPrecio"));
		int stock = Integer.parseInt(request.getParameter("txtStock"));
//		StringBuilder errores = new StringBuilder();
//		if(stock%10!=0) {
//			errores.append("<li>Debe registrar una cantidad que sea dvisible por 10</li>");
//			
//			request.setAttribute("errores",errores);
//			request.getRequestDispatcher("nuevoproducto.jsp").forward(request, response);
//		}
		
//		if(errores.isEmpty()) {
			Producto producto = new Producto(nombre, precio, stock);
			GenericDAO<Producto, Integer> genericDAO = new ProductoDAOImp();
			genericDAO.insert(producto);
			response.sendRedirect(request.getContextPath()+"/productos");
//		}
		
		
		
	}

}
