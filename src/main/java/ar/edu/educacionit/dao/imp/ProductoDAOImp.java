package ar.edu.educacionit.dao.imp;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSetImpl;

import ar.edu.educacionit.dao.ConexionMySQL;
import ar.edu.educacionit.dao.GenericDAO;
import ar.edu.educacionit.model.Producto;

public class ProductoDAOImp implements ConexionMySQL, GenericDAO<Producto, Integer> {

	@Override
	public Producto getByID(Integer key) {
		return null;
	}

	@Override
	public boolean insert(Producto entity) {
		boolean isInsert = false;
		String sentenciaSQL = "INSERT INTO productos(pro_nombre,pro_precio,pro_stock) VALUES(?,?,?)";

		try {
			PreparedStatement preparedStatement = (PreparedStatement) getConexion().prepareStatement(sentenciaSQL);
			preparedStatement.setString(1, entity.getNombre());
			preparedStatement.setDouble(2, entity.getPrecio());
			preparedStatement.setInt(3, entity.getStock());

			isInsert = preparedStatement.execute();
			preparedStatement.close();
			getConexion().close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		// PreparedStatement preparedStatement =
		// (PreparedStatement)getConexion().prepareStatement(sentenciaSQL);

		return isInsert;
	}

	@Override
	public boolean delete(Producto entity) {
		return false;
	}

	@Override
	public boolean update(Producto entity) {
		return false;
	}

	@Override
	public List<Producto> getAll() {
		List<Producto> productos = new ArrayList<>();

		String sentenciaSQL = "SELECT * FROM productos";
		try {
			PreparedStatement preparedStatement = (PreparedStatement) getConexion().prepareStatement(sentenciaSQL);

			ResultSetImpl resultSetImpl = (ResultSetImpl) preparedStatement.executeQuery();

			while (resultSetImpl.next()) {
				Producto producto = new Producto();
				producto.setId(resultSetImpl.getInt("pro_id"));
				producto.setNombre(resultSetImpl.getString("pro_nombre"));
				producto.setPrecio(resultSetImpl.getDouble("pro_precio"));
				producto.setStock(resultSetImpl.getInt("pro_stock"));
				productos.add(producto);
			}
			getConexion().close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productos;
	}

}
