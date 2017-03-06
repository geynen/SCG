package controladores;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import modelo.*;

public class MovimientoNuevoAction extends ActionSupport {
	
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
	
	
	/* Actions */
	
	public String nuevo() {
		System.out.println("Estoy en nuevo");
		
		GestionaMovimientos gestion_mov = new GestionaMovimientos();
		gestion_mov.setCodigo(this.codigo);
		gestion_mov.setIdtipo(this.idtipo);
		gestion_mov.setIdconcepto(this.idconcepto);
		gestion_mov.setFecha(this.fecha);
		gestion_mov.setIdpersonal(this.idpersonal);
		gestion_mov.setImporte(this.importe);
		gestion_mov.setIdtipodocref(this.idtipodocref);
		gestion_mov.setNrodocref(this.nrodocref);
		gestion_mov.setObservacion(this.observacion);
		Map session = ActionContext.getContext().getSession();
		gestion_mov.setIdusuario((int) session.get("idusuario"));
		gestion_mov.setIduunn((int) session.get("iduunn"));
		this.mensaje = gestion_mov.getMensaje();

		return SUCCESS;
	}
	
	public String transferir() {
		System.out.println("Estoy en transferir");
		
		GestionaMovimientos gestion_mov = new GestionaMovimientos();
		gestion_mov.setCodigo(this.codigo);
		gestion_mov.setIduunndestino(this.iduunndestino);
		gestion_mov.setIdtipo(this.idtipo);
		gestion_mov.setIdconcepto(this.idconcepto);
		gestion_mov.setFecha(this.fecha);
		gestion_mov.setIdpersonal(this.idpersonal);
		gestion_mov.setImporte(this.importe);
		gestion_mov.setIdtipodocref(this.idtipodocref);
		gestion_mov.setNrodocref(this.nrodocref);
		gestion_mov.setObservacion(this.observacion);
		Map session = ActionContext.getContext().getSession();
		gestion_mov.setIdusuario((int) session.get("idusuario"));
		gestion_mov.setIduunn((int) session.get("iduunn"));
		this.mensaje = gestion_mov.getMensaje();

		return SUCCESS;
	}
}
