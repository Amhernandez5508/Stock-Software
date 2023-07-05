package ar.edu.educacionit.dao.imp;

import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSetImpl;
import ar.edu.educacionit.dao.ConexionMySQL;
import ar.edu.educacionit.dao.IUsuarioDAO;

/**
 * Implementa transacciones específicas para usuarios en una base de datos relacional
 * @author ariel
 *@see ConexionMySQL, {@link IUsuarioDAO}
 */
public class UsuarioDAOImp implements ConexionMySQL, IUsuarioDAO{

	
	/**
	 * Valida si el usuario existe en la base de datos relacional
	 * @param nombreUsuario para buscar por nombre de usuario
	 * @param password para buscar por password del usuario
	 * @return true si existe, de lo contrario false
	 */
	@Override
	public boolean existeUsuario(String nombreUsuario, String password) {
		boolean existeUsuario=false;
		String sentenciaSQL="SELECT * FROM usuarios WHERE usu_nombre=? AND usu_password=?";
		
		try {
			PreparedStatement preparedStatement = (PreparedStatement)getConexion().prepareStatement(sentenciaSQL);
			preparedStatement.setString(1, nombreUsuario);
			preparedStatement.setString(2, password);
			
			ResultSetImpl resultSetImpl = (ResultSetImpl)preparedStatement.executeQuery();
			
			if(resultSetImpl.next()) {
				existeUsuario=true;
			}
			getConexion().close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return existeUsuario;
	}

}
