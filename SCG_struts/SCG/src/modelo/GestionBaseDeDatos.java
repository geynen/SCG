package modelo;
import java.io.Serializable;
import java.sql.*;

public class GestionBaseDeDatos implements Serializable {
	
	private String mensaje="**";
	
	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public Connection conectar(){
		
		Connection con;
		String url = "jdbc:mysql://localhost:3306/bdscg";
		String user = "root";
		String pass = "root";
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			mensaje+="Conexión exitosa";
			return con;
			
		}catch(ClassNotFoundException ex){
			mensaje+=ex.getMessage();
		}catch(SQLException ex){
			mensaje+=ex.getMessage();
		}
		return null;
	}
	
	public GestionBaseDeDatos(){
		
	}
}