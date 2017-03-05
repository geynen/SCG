package modelo;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class GestionaConcepto implements Serializable {

	private String mensaje = "";
	private String codigo = "";

	private int idconcepto;
	private String nombre = "";
	private String descripcion;
	private int idestado;

	public String getMensaje() {
		if (this.codigo.equals("NUEVO")) {
			nuevoMovimiento();
		} else if (this.codigo.equals("ACTUALIZAR")) {
			actualizarMovimiento();
		} else if (this.codigo.equals("ELIMINAR")) {
			eliminarMovimiento();
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

	public int getIdconcepto() {
		return idconcepto;
	}

	public void setIdconcepto(int idconcepto) {
		this.idconcepto = idconcepto;
	}	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}

	public void consultaMovimiento() {
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from concepto where nombre like '%"+this.codigo+"%'");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombre</th>" + "<th>Descripcion</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("idconcepto") + "</td>" + "<td>" + rs.getString("nombre") + "</td>" + "<td>"
						+ rs.getString("descripcion") + "</td>"
						+ "<td>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_editar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Editar\" data-id=\"" + rs.getString("idconcepto") + "\">"
						+ "	<i class=\"fa fa-edit\"></i>" + "</button>"
						+ "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_eliminar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Eliminar\" data-id=\"" + rs.getString("idconcepto") + "\">"
						+ "	<i class=\"fa fa-remove\"></i>" + "</button>" + "</td>"
						+ "</tr>";
			}
			mensaje += "</tbody></table>";
			rs.last();
			mensaje += "Cantidad de registros encontrados: "+rs.getRow();
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
			rs = st.executeQuery("select * from concepto");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombre</th>" + "<th>Descripcion</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("idconcepto") + "</td>" + "<td>" + rs.getString("nombre") + "</td>" + "<td>"
						+ rs.getString("descripcion") + "</td>"
						+ "<td>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_editar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Editar\" data-id=\"" + rs.getString("idconcepto") + "\">"
						+ "	<i class=\"fa fa-edit\"></i>" + "</button>"
						+ "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_eliminar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Eliminar\" data-id=\"" + rs.getString("idconcepto") + "\">"
						+ "	<i class=\"fa fa-remove\"></i>" + "</button>" + "</td>"
						+ "</tr>";
			}
			mensaje += "</tbody></table>";
			rs.last();
			mensaje += "Cantidad de registros encontrados: "+rs.getRow();
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
			CallableStatement cs = conex.prepareCall("CALL spConceptoAdd(?,?,?,?)");
			cs.setInt(1, this.idconcepto);
			cs.setString(2, this.nombre);
			cs.setString(3, this.descripcion);
			cs.registerOutParameter(4, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se inserto Correctamente.<br>Su código de concepto es:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al registrar el nuevo concepto.";
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
	
	public void actualizarMovimiento() {
		System.out.println("actualizarMovimiento");
		ResultSet rs;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			CallableStatement cs = conex.prepareCall("CALL spConceptoUpdate(?,?,?,?)");
			cs.setInt(1, this.idconcepto);
			cs.setString(2, this.nombre);
			cs.setString(3, this.descripcion);
			cs.registerOutParameter(4, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se actualizo Correctamente.<br>Su código de concepto es: " + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al actualizar el concepto.";
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
	
	public void eliminarMovimiento() {
		System.out.println("eliminarMovimiento");
		ResultSet rs;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			CallableStatement cs = conex.prepareCall("CALL spConceptoDelete(?,?)");
			cs.setInt(1, this.idconcepto);
			cs.registerOutParameter(2, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se elimino Correctamente.<br>Su código de concepto era: " + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al eliminar el concepto.";
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
			rs = st.executeQuery("select * from concepto");

			while (rs.next()) {
				str_combo += "<option value=\""+rs.getString("idconcepto")+"\">"+rs.getString("nombre")+"</option>";
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
	
	public GestionaConcepto getById(int idconcepto){
		
		GestionaConcepto obj_concepto = new GestionaConcepto();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("SELECT * FROM concepto where idconcepto="+idconcepto);
			
			if(rs.next()){
				obj_concepto.setIdconcepto(rs.getInt("idconcepto"));
				obj_concepto.setNombre(rs.getString("nombre"));
				obj_concepto.setDescripcion(rs.getString("descripcion"));
				return obj_concepto;
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

	public GestionaConcepto() {

	}
}
