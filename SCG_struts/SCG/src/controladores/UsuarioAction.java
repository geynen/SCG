package controladores;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import modelo.*;

public class UsuarioAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";

	private int idusuario;
	private int idpersonal;
	private String login;
	private String clave;
	private int idrol;
	private int idestado;
	
	//private GestionaPersonal personal;
	//private ArrayList<GestionaParametro> parametro;

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

	public String login() {
		System.out.println("Estoy en login");
		
		GestionaUsuario obj_usuario = new GestionaUsuario();
		obj_usuario.setLogin(this.login);
		obj_usuario.setClave(this.clave);
		if(obj_usuario.login()){
			this.codigo = "SUCCESS";
			this.mensaje = obj_usuario.getMensaje();
			
			Map session = ActionContext.getContext().getSession();
			session.put("login_connect","true");
			session.put("idusuario",obj_usuario.getIdusuario());
			session.put("idpersonal",obj_usuario.getIdpersonal());
			session.put("idrol",obj_usuario.getIdrol());
			session.put("login",obj_usuario.getLogin());
			session.put("usuario",obj_usuario);
			session.put("personal",obj_usuario.getPersonal());
			session.put("parametro",obj_usuario.getParametro());
		}else{
			this.codigo = "FALSE";
			this.mensaje = "Usuario o Clave incontrrectos.";
		}		
		
		return SUCCESS;
	}

	public String logout() {
		System.out.println("Estoy en logout");
		
		Map session = ActionContext.getContext().getSession();
		session = null;
		
		return SUCCESS;
	}

}
