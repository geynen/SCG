package modelo;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class GestionaUnidadNegocio implements Serializable {

	private String mensaje = "";
	private String codigo = "";

	private int iduunn;
	private String nombre = "";
	private int idestado;

	public String getMensaje() {
		if (this.codigo.equals("NUEVO")) {
			// NuevoProducto();
			// NuevoProducto2();
			nuevoMovimiento();
		} else if (this.codigo != "") {
			consultaMovimiento();
		} else {
			consultaMovimientos();
		}
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	
	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getIduunn() {
		return iduunn;
	}

	public void setIduunn(int iduunn) {
		this.iduunn = iduunn;
	}	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}
	
	public GestionaUnidadNegocio getById(int iduunn){
		
		GestionaUnidadNegocio obj_uunn = new GestionaUnidadNegocio();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from unidadnegocio where iduunn="+iduunn);
			
			if(rs.next()){
				obj_uunn.setIduunn(rs.getInt("iduunn"));
				obj_uunn.setNombre(rs.getString("nombre"));
				obj_uunn.setIdestado(rs.getInt("idestado"));
				return obj_uunn;
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

	public void consultaMovimiento() {
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from unidadnegocio where nombre like '%"+this.codigo+"%'");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombre</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("iduunn") + "</td>" + "<td>" + rs.getString("nombre") + "</td>" + "<td>"
						+ "<button type=\"button\" class=\"btn btn-white btn-sm anular\""
						+ "	data-val=\"\" data-tooltip=\"tooltip\" data-placement=\"top\"" + "	title=\"Anular\">"
						+ "	<i class=\"fa fa-times-circle-o\"></i>" + "</button>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm verdetalle\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + "	title=\"Ver Detalle\">"
						+ "	<i class=\"fa fa-eye\"></i>" + "</button>" + "</td>" + "</tr>";
			}
			mensaje += "</tbody></table>";
			rs.close();
			st.close();
			conex.close();

		} catch (SQLException ex) {
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			mensaje += ex.getMessage();
		}
	}

	public void consultaMovimientos() {
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from unidadnegocio");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombre</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("iduunn") + "</td>" + "<td>" + rs.getString("nombre") + "</td>" + "<td>"
						+ "<button type=\"button\" class=\"btn btn-white btn-sm anular\""
						+ "	data-val=\"\" data-tooltip=\"tooltip\" data-placement=\"top\"" + "	title=\"Anular\">"
						+ "	<i class=\"fa fa-times-circle-o\"></i>" + "</button>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm verdetalle\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + "	title=\"Ver Detalle\">"
						+ "	<i class=\"fa fa-eye\"></i>" + "</button>" + "</td>" + "</tr>";
			}
			mensaje += "</tbody></table>";
			rs.close();
			st.close();
			conex.close();

		} catch (SQLException ex) {
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			mensaje += ex.getMessage();
		}
	}

	public void nuevoMovimiento() {
		System.out.println("nuevoMovimiento");
		ResultSet rs;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			CallableStatement cs = conex.prepareCall("CALL spUnidadNegocioAdd(?,?,?,?)");
			cs.setInt(1, this.iduunn);
			cs.setString(2, this.nombre);
			cs.registerOutParameter(4, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se inserto Correctamente.<br>Su código de unidad de negocio es:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al registrar la nueva unidad de negocio.";
			}
			rs.close();
			cs.close();
			conex.close();

		} catch (SQLException ex) {
			System.out.println("SQLException");
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			System.out.println("NullPointerException");
			mensaje += ex.getMessage();
		}
	}
	
	public String getCombo(String idcombo, String placeholder){
		String str_combo = "";
		str_combo += "<select id=\""+idcombo+"\" data-placeholder=\""+placeholder+"\"	class=\"chosen-select\" style=\"min-width: 100%\" tabindex=\"2\">";
		str_combo += "<option value=\"\">Seleccione</option>";	
		
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from unidadnegocio");

			while (rs.next()) {
				if(this.iduunn!=rs.getInt("iduunn")){
					str_combo += "<option value=\""+rs.getString("iduunn")+"\">"+rs.getString("nombre")+"</option>";
				}
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

	public GestionaUnidadNegocio() {

	}
}
