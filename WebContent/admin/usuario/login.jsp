<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="GestionaUsuario" class="beans.GestionaUsuario" scope="session"/>
<jsp:setProperty property="codigo" name="GestionaUsuario" param="Codigo"/>
<jsp:setProperty property="login" name="GestionaUsuario" param="Usuario"/>
<jsp:setProperty property="clave" name="GestionaUsuario" param="Clave"/>
<%
if (GestionaUsuario.login()) {%>
<script>
window.open('admin/index.jsp','_self');
</script>
<% } else {%>
<script>
alert("El usuario y clave son incorrectos.");
</script>
<% } %>