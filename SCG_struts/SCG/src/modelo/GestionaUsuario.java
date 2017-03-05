package modelo;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class GestionaUsuario implements Serializable {

	private String codigo = "";
	private String mensaje = "";

	private int idusuario;
	private int idpersonal;
	private String nombres;
	private String apellidos;
	private String dni;
	private String email;
	private String login;
	private String clave;
	private int idrol;
	private int iduunn;
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
		if (this.codigo.equals("LOGIN")) {
			return mensaje;
		} else if (this.codigo.equals("NUEVO")) {
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

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
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
	
	public void consultaMovimiento() {
		ResultSet rs;
		Statement st;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("SELECT * FROM usuario u inner join personal p on u.idpersonal=p.idpersonal where nombres like '%"+this.codigo+"%' "+
					"and p.iduunn="+this.iduunn);
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombres</th>" + "<th>Apellidos</th>" + "<th>DNI</th>" + "<th>Usuario</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("idusuario") + "</td>" + "<td>" + rs.getString("nombres") + "</td>"
						+ "<td>" + rs.getString("apellidos") + "</td>" + "<td>" + rs.getString("dni") + "</td>"
						+ "<td>" + rs.getString("login") + "</td>" 
						+ "<td>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_editar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Editar\" data-id=\"" + rs.getString("idusuario") + "\">"
						+ "	<i class=\"fa fa-edit\"></i>" + "</button>"
						+ "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_eliminar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Eliminar\" data-id=\"" + rs.getString("idusuario") + "\">"
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
			rs = st.executeQuery("SELECT * FROM usuario u inner join personal p on u.idpersonal=p.idpersonal "+
					"and p.iduunn="+this.iduunn);
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Nombres</th>" + "<th>Apellidos</th>" + "<th>DNI</th>" + "<th>Usuario</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("idusuario") + "</td>" + "<td>" + rs.getString("nombres") + "</td>"
						+ "<td>" + rs.getString("apellidos") + "</td>" + "<td>" + rs.getString("dni") + "</td>"
						+ "<td>" + rs.getString("login") + "</td>"
						+ "<td>" + "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_editar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Editar\" data-id=\"" + rs.getString("idusuario") + "\">"
						+ "	<i class=\"fa fa-edit\"></i>" + "</button>"
						+ "<button type=\"button\""
						+ "	class=\"btn btn-white btn-sm btn_eliminar\""
						+ "	data-tooltip=\"tooltip\" data-placement=\"top\"" + " title=\"Eliminar\" data-id=\"" + rs.getString("idusuario") + "\">"
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
			CallableStatement cs = conex.prepareCall("CALL spUsuarioPersonaAdd(?,?,?,?,?,?,?,?,?)");
			cs.setString(1, this.nombres);
			cs.setString(2, this.apellidos);
			cs.setString(3, this.dni);
			cs.setString(4, this.email);
			cs.setString(5, this.login);
			cs.setString(6, this.clave);
			cs.setInt(7, 1);//idrol
			cs.setInt(8, this.iduunn);//iduunn
			cs.registerOutParameter(9, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se inserto Correctamente.<br>Su código de usuario es:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al registrar el nuevo usuario.";
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
			CallableStatement cs = conex.prepareCall("CALL spUsuarioPersonaUpdate(?,?,?,?,?,?,?,?,?,?)");
			cs.setInt(1, this.idusuario);
			cs.setString(2, this.nombres);
			cs.setString(3, this.apellidos);
			cs.setString(4, this.dni);
			cs.setString(5, this.email);
			cs.setString(6, this.login);
			cs.setString(7, this.clave);
			cs.setInt(8, 1);//idrol
			cs.setInt(9, this.iduunn);//iduunn
			cs.registerOutParameter(10, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se actualizo Correctamente.<br>Su código de usuario es:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al actualizar el usuario.";
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
			CallableStatement cs = conex.prepareCall("CALL spUsuarioPersonaDelete(?,?)");
			cs.setInt(1, this.idusuario);
			cs.registerOutParameter(2, Types.INTEGER, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se elimino Correctamente.<br>Su código de usuario era:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al eliminar el usuario.";
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
	
	public GestionaUsuario getById(int idusuario){
		
		GestionaUsuario obj_usuario = new GestionaUsuario();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("SELECT * FROM usuario u inner join personal p on u.idpersonal=p.idpersonal where idusuario="+idusuario);
			
			if(rs.next()){
				obj_usuario.setIdusuario(rs.getInt("idusuario"));
				obj_usuario.setIdpersonal(rs.getInt("idpersonal"));
				obj_usuario.setNombres(rs.getString("nombres"));
				obj_usuario.setApellidos(rs.getString("apellidos"));
				obj_usuario.setDni(rs.getString("dni"));
				obj_usuario.setEmail(rs.getString("email"));
				obj_usuario.setLogin(rs.getString("login"));
				obj_usuario.setClave(rs.getString("clave"));
				obj_usuario.setIdrol(rs.getInt("idrol"));
				obj_usuario.setIdestado(rs.getInt("idestado"));
				return obj_usuario;
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

}
