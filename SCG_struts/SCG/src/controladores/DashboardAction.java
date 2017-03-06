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

public class DashboardAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";
	
	private Double ingresos;
	private Double egresos;
	private Double total;
	private Double transferencias;
	private Double egresos_porcentaje;
	private Double total_porcentaje;
	private Double transferencias_porcentaje;
	
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

	public Double getIngresos() {
		return ingresos;
	}

	public void setIngresos(Double ingresos) {
		this.ingresos = ingresos;
	}

	public Double getEgresos() {
		return egresos;
	}

	public void setEgresos(Double egresos) {
		this.egresos = egresos;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getTransferencias() {
		return transferencias;
	}

	public void setTransferencias(Double transferencias) {
		this.transferencias = transferencias;
	}	

	public Double getEgresos_porcentaje() {
		return egresos_porcentaje;
	}

	public void setEgresos_porcentaje(Double egresos_porcentaje) {
		this.egresos_porcentaje = egresos_porcentaje;
	}

	public Double getTotal_porcentaje() {
		return total_porcentaje;
	}

	public void setTotal_porcentaje(Double total_porcentaje) {
		this.total_porcentaje = total_porcentaje;
	}

	public Double getTransferencias_porcentaje() {
		return transferencias_porcentaje;
	}

	public void setTransferencias_porcentaje(Double transferencias_porcentaje) {
		this.transferencias_porcentaje = transferencias_porcentaje;
	}

	public String index() {
		System.out.println("Estoy en index");
		
		GestionaDashboard obj_dashboard = new GestionaDashboard();
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			obj_dashboard.setIduunn((int) session.get("iduunn"));
		}
		GestionaDashboard gestion_dashboard = obj_dashboard.getCantidades();
		this.ingresos = gestion_dashboard.getIngresos();
		this.egresos = gestion_dashboard.getEgresos();
		this.total = gestion_dashboard.getTotal();
		this.transferencias = gestion_dashboard.getTransferencias();
		if(this.ingresos>0){
			this.egresos_porcentaje = (this.egresos*100)/this.ingresos;
		}
		if(this.ingresos>0){
			this.total_porcentaje = (this.total*100)/this.ingresos;
		}
		if(this.ingresos>0){
			this.transferencias_porcentaje = (this.transferencias*100)/this.ingresos;
		}

		return SUCCESS;
	}
}
