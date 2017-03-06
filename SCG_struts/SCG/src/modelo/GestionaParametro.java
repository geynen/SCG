package modelo;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class GestionaParametro implements Serializable {

	private String mensaje = "";

	private int idparametro;
	private String codigo;
	private String descripcion;
	private String descripcioncorta;
	private String valor;
	private int idparent;
	private int idestado;

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public int getIdparametro() {
		return idparametro;
	}

	public void setIdparametro(int idparametro) {
		this.idparametro = idparametro;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getDescripcioncorta() {
		return descripcioncorta;
	}

	public void setDescripcioncorta(String descripcioncorta) {
		this.descripcioncorta = descripcioncorta;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public int getIdparent() {
		return idparent;
	}

	public void setIdparent(int idparent) {
		this.idparent = idparent;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}
	
	public ArrayList<GestionaParametro> getById(){
		
		ArrayList<GestionaParametro> arr_obj_parametro = new ArrayList<GestionaParametro>();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select * from parametro where idestado=1");
			System.out.println("parametros");
			while(rs.next()){
				System.out.println("add parametrox");
				GestionaParametro obj_parametro = new GestionaParametro();
				obj_parametro.setIdparametro(rs.getInt("idparametro"));
				obj_parametro.setCodigo(rs.getString("codigo"));
				obj_parametro.setDescripcion(rs.getString("descripcion"));
				obj_parametro.setDescripcioncorta(rs.getString("descripcion_corta"));
				obj_parametro.setValor(rs.getString("valor"));
				obj_parametro.setIdparent(rs.getInt("idparent"));
				obj_parametro.setIdestado(rs.getInt("idestado"));
				
				arr_obj_parametro.add(obj_parametro);
				System.out.println("add parametro");
			}
			rs.close();
			st.close();
			conex.close();
			
		}catch(SQLException ex){
			mensaje+=ex.getMessage();
		}catch(NullPointerException ex){
			mensaje+=ex.getMessage();
		}
		System.out.println(mensaje);
		return arr_obj_parametro;
	}

}