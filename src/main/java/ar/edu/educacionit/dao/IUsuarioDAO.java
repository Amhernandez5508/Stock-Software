package ar.edu.educacionit.dao;
/**
 * Permite establecer contratos específicos para transacciones con Usuarios
 * @author ariel
 *
 */
public interface IUsuarioDAO {
	/**
	 * Valida si el usuario existe en el sistema de persistencia
	 * @param nombreUsuario para buscar por nombre de usuario
	 * @param password para buscar por password del usuario
	 * @return true si existe, de lo contrario false
	 */
	boolean existeUsuario(String nombreUsuario, String password);
}
