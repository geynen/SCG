package controladores;

import com.opensymphony.xwork2.ActionSupport;
import modelo.*;
public class HomeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String ident,passw, salida;
	
	
	public String getIdent() {
		return ident;
	}


	public void setIdent(String ident) {
		this.ident = ident;
	}


	public String getPassw() {
		return passw;
	}


	public void setPassw(String passw) {
		this.passw = passw;
	}


	public String getSalida() {
		return salida;
	}


	public void setSalida(String salida) {
		this.salida = salida;
	}
	
	public String index() {
		return SUCCESS;		
	}


	public String conectar() {
		System.out.println("Estoy en cnectar del Action");
		/*
		GestionaUsuarios oGestion=new GestionaUsuarios();
		if(oGestion.VerificaUsuario(getIdent(),getPassw()))
			setSalida("Usuario autorizado!");
		else
			setSalida("Usuario NO autorizado!");			
	*/
		return SUCCESS;
		
		
	}

}
