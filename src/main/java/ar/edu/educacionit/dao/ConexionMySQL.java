package ar.edu.educacionit.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public interface ConexionMySQL {
	default Connection getConexion() {
		Connection conn = null;
		final String DRIVER="com.mysql.jdbc.Driver";
		final String DATA_BASE="ventasdb";
		final String URL="jdbc:mysql://localhost:3306/"+DATA_BASE;
		final String USER_BD="usuario";
		final String PASSWORD="usuario";
		try {
			Class.forName(DRIVER);
			conn = (Connection)DriverManager.getConnection(URL, USER_BD, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}

}
