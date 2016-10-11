package beans;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

import GestionBaseDeDatos.GestionBaseDeDatos;

public class GestionaUsuario implements Serializable {

	private String codigo = "";
	private String mensaje = "";

	private int idusuario;
	private int idpersonal;
	private String login;
	private String clave;
	private int idrol;
	private int idestado;

	private GestionaPersonal personal;
	private ArrayList<GestionaParametro> parametro;

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public int getIdpersonal() {
		return idpersonal;
	}

	public void setIdpersonal(int idpersonal) {
		this.idpersonal = idpersonal;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public int getIdrol() {
		return idrol;
	}

	public void setIdrol(int idrol) {
		this.idrol = idrol;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}

	public GestionaPersonal getPersonal() {
		return personal;
	}

	public void setPersonal(GestionaPersonal personal) {
		this.personal = personal;
	}

	public ArrayList<GestionaParametro> getParametro() {
		return parametro;
	}

	public void setParametro(ArrayList<GestionaParametro> parametro) {
		this.parametro = parametro;
	}

	public boolean login() {
		ResultSet rs;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			CallableStatement cs = conex.prepareCall("CALL spUsuarioLogin(?,?)");
			cs.setString(1, this.login);
			cs.setString(2, this.clave);
			rs = cs.executeQuery();

			if (rs.next()) {
				this.idusuario = rs.getInt("idusuario");
				this.idpersonal = rs.getInt("idpersonal");
				this.idrol = rs.getInt("idrol");

				GestionaPersonal obj_personal = new GestionaPersonal();
				obj_personal = obj_personal.getById(this.idpersonal);
				this.personal = obj_personal;

				GestionaParametro obj_parametro = new GestionaParametro();
				this.parametro = obj_parametro.getById();

				return true;
			}
			rs.close();
			conex.close();

		} catch (SQLException ex) {
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			mensaje += ex.getMessage();
		}
		return false;
	}

	public void logout() {
		this.login = null;
	}
	
	public ArrayList<GestionaParametro> getGrupoParametro(int idparent){
		ArrayList<GestionaParametro> arr_obj_parametro = new ArrayList<GestionaParametro>();
		for (GestionaParametro gestionaParametro : parametro) {
			System.out.println("si hay parametro");
			if(gestionaParametro.getIdparent()==idparent){
				arr_obj_parametro.add(gestionaParametro);
			}
		}
		return arr_obj_parametro;
	}
	
	public String getComboParametros(int idparent, String idcombo, String placeholder){
		String str_combo = "";
		ArrayList<GestionaParametro> parametro_hijos = getGrupoParametro(idparent);
		str_combo += "<select id=\""+idcombo+"\" data-placeholder=\""+placeholder+"\"	class=\"chosen-select\" style=\"min-width: 100%\" tabindex=\"2\">";
		str_combo += "<option value=\"\">Seleccione</option>";
		for (GestionaParametro gestionaParametro : parametro_hijos) {
			str_combo += "<option value=\""+gestionaParametro.getIdparametro()+"\">"+gestionaParametro.getDescripcion()+"</option>";
		}
		str_combo += "</select>";
		return str_combo;
	}

}
