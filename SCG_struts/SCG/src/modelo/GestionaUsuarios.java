package modelo;

import java.sql.*;

public class GestionaUsuarios {
	Connection con;
	ResultSet rs;
	Statement cmd;
	/*
	public boolean VerificaUsuario(String ident, String passw) {

		System.out.println("ident  "+ident + "contraseña " +passw);
	try {
		System.out.println("Estoy en try");		
	 con=GestionBaseDeDatos.getCon();
	  if(con!=null) {
		  System.out.println("Ingrese al if");
		String comando="SELECT * FROM usuario WHERE nomUsuario='"+ident+"' AND contrasena='"+passw+"'";
		cmd=con.createStatement();
		rs=cmd.executeQuery(comando);
		if(rs.next())	return true;
		else 	return false;
  	  }
		
	}
	catch(SQLException ex) {
		
	}
	return false;
	
	
	} 
	*/
	

}
