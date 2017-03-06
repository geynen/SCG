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

public class MovimientosAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";
	
	private int idmovimiento;
	GestionaConcepto gestiona_concepto;
	GestionaPersonal gestiona_personal;
	
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
	
	public int getIdmovimiento() {
		return idmovimiento;
	}

	public void setIdmovimiento(int idmovimiento) {
		this.idmovimiento = idmovimiento;
	}

	public GestionaConcepto getGestiona_concepto() {
		return gestiona_concepto;
	}

	public void setGestiona_concepto(GestionaConcepto gestiona_concepto) {
		this.gestiona_concepto = gestiona_concepto;
	}

	public GestionaPersonal getGestiona_personal() {
		return gestiona_personal;
	}

	public void setGestiona_personal(GestionaPersonal gestiona_personal) {
		this.gestiona_personal = gestiona_personal;
	}
	
	/* Actions */

	public String index() {
		System.out.println("Estoy en index");
		gestiona_concepto = new GestionaConcepto();
		gestiona_personal = new GestionaPersonal();
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestiona_personal.setIduunn((int) session.get("iduunn"));
		}
		return SUCCESS;
	}
	
	public String getListarAll() {
		System.out.println("Estoy en getListarAll");
		
		GestionaMovimientos gestion_mov = new GestionaMovimientos();
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_mov.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_mov.getMensaje();

		return SUCCESS;
	}
	
	public String getBuscar() {
		System.out.println("Estoy en getBuscar");
		
		GestionaMovimientos gestion_mov = new GestionaMovimientos();
		gestion_mov.setCodigo(this.codigo);
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_mov.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_mov.getMensaje();

		return SUCCESS;
	}
	
	public String eliminar() {
		System.out.println("Estoy en eliminar");
		
		GestionaMovimientos gestion_mov = new GestionaMovimientos();
		gestion_mov.setCodigo("ELIMINAR");
		gestion_mov.setIdmovimiento(this.idmovimiento);
		this.mensaje = gestion_mov.getMensaje();

		return SUCCESS;
	}
	
}
