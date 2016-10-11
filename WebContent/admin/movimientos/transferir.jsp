<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="GestionaUsuario" class="beans.GestionaUsuario" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuevo Movimiento</title>
</head>
<body>
<jsp:useBean id="GestionaMovimientos" class="beans.GestionaMovimientos" scope="page"/>
<jsp:setProperty property="codigo" name="GestionaMovimientos" param="Codigo"/>
<jsp:setProperty property="iduunndestino" name="GestionaMovimientos" param="IdUUNN"/>
<jsp:setProperty property="idconcepto" name="GestionaMovimientos" param="IdConcepto"/>
<jsp:setProperty property="idpersonal" name="GestionaMovimientos" param="IdPersonal"/>
<jsp:setProperty property="importe" name="GestionaMovimientos" param="Importe"/>
<jsp:setProperty property="fecha" name="GestionaMovimientos" param="Fecha"/>
<jsp:setProperty property="idtipodocref" name="GestionaMovimientos" param="IdTipoDocRef"/>
<jsp:setProperty property="nrodocref" name="GestionaMovimientos" param="NroDocRef"/>
<%
GestionaMovimientos.setIdusuario(GestionaUsuario.getIdusuario());
%>
<jsp:getProperty property="mensaje" name="GestionaMovimientos"/>
<br>
<a href="transferencias.jsp">Registrar otra transferencia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="gastos.jsp">Ir a listado</a>

</body>
</html>