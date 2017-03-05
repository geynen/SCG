package modelo;

import java.io.*;
import java.sql.*;

public class GestionaPersonal implements Serializable {

	private String mensaje = "";

	private int idpersonal;
	private String nombres;
	private String apellidos;
	private String dni;
	private String email;
	private int iduunn;
	private int idestado;
	
	private GestionaUnidadNegocio gestiona_unidadnegocio;

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public int getIdpersonal() {
		return idpersonal;
	}

	public void setIdpersonal(int idpersonal) {
		this.idpersonal = idpersonal;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIduunn() {
		return iduunn;
	}

	public void setIduunn(int iduunn) {
		this.iduunn = iduunn;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}	
	
	public GestionaUnidadNegocio getGestiona_unidadnegocio() {
		return gestiona_unidadnegocio;
	}

	public void setGestiona_unidadnegocio(GestionaUnidadNegocio gestiona_unidadnegocio) {
		this.gestiona_unidadnegocio = gestiona_unidadnegocio;
	}

	public GestionaPersonal getById(int idpersonal){
		
		GestionaPersonal obj_personal = new GestionaPersonal();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from personal where idpersonal="+idpersonal);
			
			if(rs.next()){
				obj_personal.setIdpersonal(rs.getInt("idpersonal"));
				obj_personal.setNombres(rs.getString("nombres"));
				obj_personal.setApellidos(rs.getString("apellidos"));
				obj_personal.setDni(rs.getString("dni"));
				obj_personal.setEmail(rs.getString("email"));
				obj_personal.setIduunn(rs.getInt("iduunn"));
				obj_personal.setIdestado(rs.getInt("idestado"));
				GestionaUnidadNegocio obj_uunn = new GestionaUnidadNegocio();
				obj_uunn = obj_uunn.getById(obj_personal.getIduunn());
				obj_personal.setGestiona_unidadnegocio(obj_uunn);
				return obj_personal;
			}
			rs.close();
			st.close();
			conex.close();
			
		}catch(SQLException ex){
			mensaje+=ex.getMessage();
		}catch(NullPointerException ex){
			mensaje+=ex.getMessage();
		}
		return null;
	}
	
	public String getCombo(String idcombo, String placeholder){
		String str_combo = "";
		str_combo += "<select id=\""+idcombo+"\" data-placeholder=\""+placeholder+"\"	class=\"chosen-select\" style=\"min-width: 100%\" tabindex=\"2\">";
		str_combo += "<option value=\"\">Seleccione</option>";
		
		String str_where = "";
		if(this.iduunn!=0){
			str_where = " and iduunn="+this.iduunn;
		}
		
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from personal where 1=1"+str_where);

			while (rs.next()) {
				str_combo += "<option value=\""+rs.getString("idpersonal")+"\">"+rs.getString("nombres")+" "+rs.getString("apellidos")+"</option>";
			}
			rs.close();
			st.close();
			conex.close();

		} catch (SQLException ex) {
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			mensaje += ex.getMessage();
		}
		
		str_combo += "</select>";
		return str_combo;
	}

}