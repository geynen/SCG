package modelo;

import java.io.*;
import java.sql.*;

public class GestionaMovimientos implements Serializable {

	private String mensaje = "";

	private int idmovimiento;
	private String codigo = "";
	private String fecha;
	private int iduunn;
	private int iduunndestino;
	private int idusuario;
	private int idtipo;
	private int idconcepto;
	private int idpersonal;
	private double importe;
	private double igv;
	private double total;
	private int idtipodocref;
	private String nrodocref;
	private String observacion;
	private int idestado;

	public String getMensaje() {
		if (this.codigo.equals("NUEVO")) {
			// NuevoProducto();
			// NuevoProducto2();
			nuevoMovimiento();
		} else if (this.codigo.equals("TRANSFERIR")) {
			nuevaTransferencia();
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

	public int getIdmovimiento() {
		return idmovimiento;
	}

	public void setIdmovimiento(int idmovimiento) {
		this.idmovimiento = idmovimiento;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public int getIduunn() {
		return iduunn;
	}

	public void setIduunn(int iduunn) {
		this.iduunn = iduunn;
	}

	public int getIduunndestino() {
		return iduunndestino;
	}

	public void setIduunndestino(int iduunndestino) {
		this.iduunndestino = iduunndestino;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public int getIdtipo() {
		return idtipo;
	}

	public void setIdtipo(int idtipo) {
		this.idtipo = idtipo;
	}

	public int getIdconcepto() {
		return idconcepto;
	}

	public void setIdconcepto(int idconcepto) {
		this.idconcepto = idconcepto;
	}

	public int getIdpersonal() {
		return idpersonal;
	}

	public void setIdpersonal(int idpersonal) {
		this.idpersonal = idpersonal;
	}

	public double getImporte() {
		return importe;
	}

	public void setImporte(double importe) {
		this.importe = importe;
	}

	public double getIgv() {
		return igv;
	}

	public void setIgv(double igv) {
		this.igv = igv;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public int getIdtipodocref() {
		return idtipodocref;
	}

	public void setIdtipodocref(int idtipodocref) {
		this.idtipodocref = idtipodocref;
	}

	public String getNrodocref() {
		return nrodocref;
	}

	public void setNrodocref(String nrodocref) {
		this.nrodocref = nrodocref;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
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
			rs = st.executeQuery("select m.*, p.descripcion as tipomovimiento, c.descripcion as concepto, concat(pe.nombres,' ',pe.apellidos) as personal, pa.descripcion as tipodocumento "+
					"from movimiento m inner join parametro p on m.idtipomovimiento=p.idparametro "+
					"inner join concepto c on m.idconcepto=c.idconcepto "+
					"left join personal pe on m.idpersonal=pe.idpersonal "+
					"left join parametro pa on m.idtipodocumento=pa.idparametro "+
					"where m.codigo='" + codigo + "'");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Tipo</th>" + "<th>Fecha</th>" + "<th>Concepto</th>" + "<th>Importe</th>"
					+ "<th>Asignado a</th>" + "<th>Tipo Doc. Ref.</th>" + "<th>Nro Doc. Ref.</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("codigo") + "</td>" + "<td>" + rs.getString("tipomovimiento") + "</td>" + "<td>"
						+ rs.getString("fecha").substring(0,10) + "</td>" + "<td>" + rs.getString("concepto") + "</td>" + "<td>S/. "
						+ rs.getString("total") + "</td>" + "<td>" + rs.getString("personal") + "</td>" + "<td>" + rs.getString("tipodocumento") + "</td>"
						+ "<td>" + rs.getString("nrodocumento") + "</td>" + "<td>"
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
			rs = st.executeQuery("select m.*, p.descripcion as tipomovimiento, c.descripcion as concepto, concat(pe.nombres,' ',pe.apellidos) as personal, pa.descripcion as tipodocumento "+
					"from movimiento m inner join parametro p on m.idtipomovimiento=p.idparametro "+
					"inner join concepto c on m.idconcepto=c.idconcepto "+
					"left join personal pe on m.idpersonal=pe.idpersonal "+
					"left join parametro pa on m.idtipodocumento=pa.idparametro order by m.fecha desc, m.idmovimiento desc");
			
			mensaje += "<table class=\"table table-striped\">" + "<thead>" + "<tr>" + "<th>C&oacute;digo</th>"
					+ "<th>Tipo</th>" + "<th>Fecha</th>" + "<th>Concepto</th>" + "<th>Importe</th>"
					+ "<th>Asignado a</th>" + "<th>Tipo Doc. Ref.</th>" + "<th>Nro Doc. Ref.</th>" + "<th>Acción</th>"
					+ "</tr>" + "</thead>" + "<tbody>";

			while (rs.next()) {
				mensaje += "<tr>" + "<td>" + rs.getString("codigo") + "</td>" + "<td>" + rs.getString("tipomovimiento") + "</td>" + "<td>"
						+ rs.getString("fecha").substring(0,10) + "</td>" + "<td>" + rs.getString("concepto") + "</td>" + "<td>S/. "
						+ rs.getString("total") + "</td>" + "<td>" + rs.getString("personal") + "</td>" + "<td>" + rs.getString("tipodocumento") + "</td>"
						+ "<td>" + rs.getString("nrodocumento") + "</td>" + "<td>"
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
			CallableStatement cs = conex.prepareCall("CALL spMovimientoAdd(?,?,?,?,?,?,?,?,?,?)");
			cs.setInt(1, this.idtipo);
			cs.setInt(2, this.idconcepto);
			cs.setString(3, this.fecha);
			cs.setInt(4, this.idusuario);
			cs.setInt(5, this.idpersonal);
			cs.setDouble(6, this.importe);
			cs.setInt(7, this.idtipodocref);
			cs.setString(8, this.nrodocref);
			cs.setString(9, this.observacion);
			cs.registerOutParameter(10, Types.CHAR, "var_codigo");
			
			System.out.println("QUERY:"+cs.toString());
			
			rs = cs.executeQuery();

			if (rs.next()) {
				// Forma de acceder: rs.getString(1)+"/"+rs.getString("var_codigo");
				mensaje += "Se inserto Correctamente.<br>Su código de movimiento es:" + rs.getString("var_codigo");
			} else {
				mensaje += "Ocurrio un error al registrar el nuevo producto.";
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

	public void nuevaTransferencia() {
		ResultSet rs;
		try {
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();

			CallableStatement cs = conex.prepareCall("CALL spMovimientoTransferencia(?,?,?,?,?,?,?,?,?,?,?)");
			// cs.setInt(1, this.iduunn);
			cs.setInt(1, 1);
			cs.setInt(2, this.iduunndestino);
			cs.setInt(3, this.idconcepto);
			cs.setString(4, this.fecha);
			cs.setInt(5, this.idusuario);
			cs.setInt(6, this.idpersonal);
			cs.setDouble(7, this.importe);
			cs.setInt(8, this.idtipodocref);
			cs.setString(9, this.nrodocref);
			cs.setString(10, this.observacion);
			cs.registerOutParameter(11, Types.CHAR, "var_codigo");
			rs = cs.executeQuery();

			if (rs.next()) {
				mensaje += "Se inserto Correctamente.";
			} else {
				mensaje += "Ocurrio un error al registrar el nuevo producto.";
			}
			rs.close();
			cs.close();
			conex.close();

		} catch (SQLException ex) {
			mensaje += ex.getMessage();
		} catch (NullPointerException ex) {
			mensaje += ex.getMessage();
		}
	}

	public GestionaMovimientos() {

	}
}
