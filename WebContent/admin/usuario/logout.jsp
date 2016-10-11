<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="GestionaUsuario" class="beans.GestionaUsuario" scope="session"/>
<%
GestionaUsuario.logout();
String redirectURL = "../index.jsp";
response.sendRedirect(redirectURL);
return;
%>