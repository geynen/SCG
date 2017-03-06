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

public class PersonalAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";
	
	private int iduunn;
	private GestionaPersonal gestiona_personal;
	
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
	
	public int getIduunn() {
		return iduunn;
	}

	public void setIduunn(int iduunn) {
		this.iduunn = iduunn;
	}

	public GestionaPersonal getGestiona_personal() {
		return gestiona_personal;
	}

	public void setGestiona_personal(GestionaPersonal gestiona_personal) {
		this.gestiona_personal = gestiona_personal;
	}
	
	/* Actions */

	public String combo() {
		System.out.println("Estoy en combo iduunn:"+this.iduunn);
		gestiona_personal = new GestionaPersonal();
		gestiona_personal.setIduunn(this.iduunn);

		return SUCCESS;
	}
}
