<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="row border-bottom">
	<nav class="navbar navbar-static-top white-bg" role="navigation"
		style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
			href="#"><i class="fa fa-bars"></i> </a>
	</div>
	<ul class="nav navbar-top-links navbar-right">
		<li><span class="m-r-sm text-muted welcome-message">Bienvenidos	al Sistema de Control de Gastos.</span></li>
		<li><span class="m-r-sm text-muted welcome-message">UUNN: <s:property value="#session.unidad_negocio.getNombre()"/></span></li>
		<li><s:a action="Logout"><i class="fa fa-sign-out"></i>
				Cerrar Sesión
		</s:a></li>
	</ul>

	</nav>
</div>