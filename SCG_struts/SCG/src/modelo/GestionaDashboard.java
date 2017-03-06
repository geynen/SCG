package modelo;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

public class GestionaDashboard implements Serializable {

	private String mensaje = "";
	
	private int iduunn;
	private Double ingresos;
	private Double egresos;
	private Double total;
	private Double transferencias;

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
	
	public GestionaDashboard getCantidades(){
		
		GestionaDashboard obj_dashboard = new GestionaDashboard();
		ResultSet rs;
		Statement st;
		try{
			GestionBaseDeDatos gestor = new GestionBaseDeDatos();
			Connection conex = gestor.conectar();
			mensaje = gestor.getMensaje();
			st = conex.createStatement();
			rs = st.executeQuery("select "+
			"(select sum(total) from movimiento where idtipomovimiento=5 and idestado=1 and iduunn="+this.iduunn+") as ingresos,"+
			"(select sum(total) from movimiento where idtipomovimiento=6 and idestado=1 and iduunn="+this.iduunn+") as egresos,"+
			"(select sum(total) from movimiento where idtipomovimiento=5 and idestado=1 and iduunn="+this.iduunn+" and observacion like 'TRANSFERENCIA:%') as ingresos_t,"+
			"(select sum(total) from movimiento where idtipomovimiento=6 and idestado=1 and iduunn="+this.iduunn+" and observacion like 'TRANSFERENCIA:%') as egresos_t");
			
			if(rs.next()){
				obj_dashboard.setIngresos(rs.getDouble("ingresos"));
				obj_dashboard.setEgresos(rs.getDouble("egresos"));
				obj_dashboard.setTotal(rs.getDouble("ingresos")-rs.getDouble("egresos"));
				obj_dashboard.setTransferencias(rs.getDouble("ingresos_t")-rs.getDouble("egresos_t"));
				return obj_dashboard;
			}
			rs.close();
			st.close();
			conex.close();
			
		}catch(SQLException ex){
			mensaje+=ex.getMessage();
		}catch(NullPointerException ex){
			mensaje+=ex.getMessage();
		}
		return null;
	}

}