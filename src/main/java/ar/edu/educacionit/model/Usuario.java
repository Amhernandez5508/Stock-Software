package ar.edu.educacionit.model;

/**
 * Representa al usuario que se conecta a la aplicación
 * @author ariel vega
 *
 */
public class Usuario {
	/** Es el nombre del usuario*/
	private String nombreUsuario;
	/** Es el password del usuario*/
	private String password;
	
	/**Constructor por defecto*/
	public Usuario() {
		
	}
	
	/**
	 * Costructor parametrizado
	 * @param nombreUsuario Es el nombre del usuario
	 * @param password Es el password del usuario
	 */
	public Usuario(String nombreUsuario, String password) {
		this.nombreUsuario = nombreUsuario;
		this.password=password;
		
	}

	//-------------METODOS ACCESORES ------------------
	/**
	 * Devuelve el nombre del usuario
	 * @return this.nombreUsuario
	 */
	public String getNombreUsuario() {
		return nombreUsuario;
	}

	/**
	 * Asigna un valor al nombre del usuario
	 * @param nombreUsuario el valor que se asignará al nombre del usuario
	 */
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	
	/**
	 * Devuelve el password del usuario
	 * @return this.password
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * Asigna un valor al password del usuario
	 * @param password el valor que se asignará al passoword del usuario
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
