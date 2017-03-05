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

public class ConceptoAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";
	
	private int idconcepto;
	private String nombre = "";
	private String descripcion;
	private int idestado;
	
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

	/* Actions */
	
	public String index() {
		System.out.println("Estoy en index");

		return SUCCESS;
	}
	
	public String getListarAll() {
		System.out.println("Estoy en getListarAll");
		
		GestionaConcepto gestion_concepto = new GestionaConcepto();
		this.mensaje = gestion_concepto.getMensaje();

		return SUCCESS;
	}
	
	public String getBuscar() {
		System.out.println("Estoy en getBuscar");
		
		GestionaConcepto gestion_concepto = new GestionaConcepto();
		gestion_concepto.setCodigo(this.codigo);
		this.mensaje = gestion_concepto.getMensaje();

		return SUCCESS;
	}
	
	public String nuevo() {
		System.out.println("Estoy en nuevo");

		return SUCCESS;
	}
	
	public String save() {
		System.out.println("Estoy en nuevo");
		
		GestionaConcepto gestion_concepto = new GestionaConcepto();
		gestion_concepto.setCodigo(this.codigo);
		gestion_concepto.setIdconcepto(this.idconcepto);
		gestion_concepto.setNombre(this.nombre);
		gestion_concepto.setDescripcion(this.descripcion);
		this.mensaje = gestion_concepto.getMensaje();

		return SUCCESS;
	}
	
	public String actualizar() {
		System.out.println("Estoy en actualizar idconcepto="+this.idconcepto);
		GestionaConcepto obj_concepto = new GestionaConcepto();
		GestionaConcepto gestion_concepto = obj_concepto.getById(this.idconcepto);
		this.idconcepto = gestion_concepto.getIdconcepto();
		this.nombre = gestion_concepto.getNombre();
		this.descripcion = gestion_concepto.getDescripcion();

		return SUCCESS;
	}
	
	public String update() {
		System.out.println("Estoy en actualizar");
		
		GestionaConcepto gestion_concepto = new GestionaConcepto();
		gestion_concepto.setCodigo(this.codigo);
		gestion_concepto.setIdconcepto(this.idconcepto);
		gestion_concepto.setNombre(this.nombre);
		gestion_concepto.setDescripcion(this.descripcion);
		this.mensaje = gestion_concepto.getMensaje();

		return SUCCESS;
	}
	
	public String eliminar() {
		System.out.println("Estoy en eliminar");
		
		GestionaConcepto gestion_concepto = new GestionaConcepto();
		gestion_concepto.setCodigo("ELIMINAR");
		gestion_concepto.setIdconcepto(this.idconcepto);
		this.mensaje = gestion_concepto.getMensaje();

		return SUCCESS;
	}
}
