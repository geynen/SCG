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
	private String nombres;
	private String apellidos;
	private String dni;
	private String email;
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
			session.put("iduunn",obj_usuario.getPersonal().getIduunn());
			session.put("unidad_negocio",obj_usuario.getPersonal().getGestiona_unidadnegocio());
			session.put("parametro",obj_usuario.getParametro());
		}else{
			this.codigo = "FALSE";
			this.mensaje = "Usuario o Clave incorrectos.";
		}		
		
		return SUCCESS;
	}

	public String logout() {
		System.out.println("Estoy en logout");
		
		Map session = ActionContext.getContext().getSession();
		session.remove("login_connect");
		
		return SUCCESS;
	}
	
	public String index() {
		System.out.println("Estoy en index");

		return SUCCESS;
	}
	
	public String getListarAll() {
		System.out.println("Estoy en getListarAll");
		
		GestionaUsuario gestion_usuario = new GestionaUsuario();
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_usuario.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_usuario.getMensaje();

		return SUCCESS;
	}
	
	public String getBuscar() {
		System.out.println("Estoy en getBuscar");
		
		GestionaUsuario gestion_usuario = new GestionaUsuario();
		gestion_usuario.setCodigo(this.codigo);
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_usuario.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_usuario.getMensaje();

		return SUCCESS;
	}
	
	public String nuevo() {
		System.out.println("Estoy en nuevo");

		return SUCCESS;
	}
	
	public String save() {
		System.out.println("Estoy en nuevo");
		
		GestionaUsuario gestion_usuario = new GestionaUsuario();
		gestion_usuario.setCodigo(this.codigo);
		gestion_usuario.setNombres(this.nombres);
		gestion_usuario.setApellidos(this.apellidos);
		gestion_usuario.setDni(this.dni);
		gestion_usuario.setEmail(this.email);
		gestion_usuario.setLogin(this.login);
		gestion_usuario.setClave(this.clave);
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_usuario.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_usuario.getMensaje();

		return SUCCESS;
	}
	
	public String actualizar() {
		System.out.println("Estoy en actualizar idusuario="+this.idusuario);
		GestionaUsuario obj_usuario = new GestionaUsuario();
		GestionaUsuario gestion_usuario = obj_usuario.getById(this.idusuario);
		this.idpersonal = gestion_usuario.getIdpersonal();
		this.nombres = gestion_usuario.getNombres();
		this.apellidos = gestion_usuario.getApellidos();
		this.dni = gestion_usuario.getDni();
		this.email = gestion_usuario.getEmail();
		this.login = gestion_usuario.getLogin();
		this.clave = gestion_usuario.getClave();

		return SUCCESS;
	}
	
	public String update() {
		System.out.println("Estoy en actualizar");
		
		GestionaUsuario gestion_usuario = new GestionaUsuario();
		gestion_usuario.setCodigo(this.codigo);
		gestion_usuario.setIdusuario(this.idusuario);
		gestion_usuario.setNombres(this.nombres);
		gestion_usuario.setApellidos(this.apellidos);
		gestion_usuario.setDni(this.dni);
		gestion_usuario.setEmail(this.email);
		gestion_usuario.setLogin(this.login);
		gestion_usuario.setClave(this.clave);
		Map session = ActionContext.getContext().getSession();
		if(session.get("iduunn")!=null){
			gestion_usuario.setIduunn((int) session.get("iduunn"));
		}
		this.mensaje = gestion_usuario.getMensaje();

		return SUCCESS;
	}
	
	public String eliminar() {
		System.out.println("Estoy en eliminar");
		
		GestionaUsuario gestion_usuario = new GestionaUsuario();
		gestion_usuario.setCodigo("ELIMINAR");
		gestion_usuario.setIdusuario(this.idusuario);
		this.mensaje = gestion_usuario.getMensaje();

		return SUCCESS;
	}

}
