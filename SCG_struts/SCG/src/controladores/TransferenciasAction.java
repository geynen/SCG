package controladores;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import modelo.*;

public class TransferenciasAction extends ActionSupport {
	
	private String codigo = "";
	private String mensaje = "";
	
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
	
	public String index() {
		System.out.println("Estoy en index");

		return SUCCESS;
	}
}
