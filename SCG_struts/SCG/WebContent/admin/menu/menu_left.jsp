<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<nav class="navbar-default navbar-static-side" role="navigation">
<div class="sidebar-collapse">
	<ul class="nav metismenu" id="side-menu">
		<li class="nav-header">
			<div class="dropdown profile-element">
				<span> <img alt="image" class="img-circle"
					src="admin/img/profile_small.jpg" />
				</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
					class="clear"> <span class="block m-t-xs"> <strong
							class="font-bold"><s:property value="#session.personal.nombres"/> <s:property value="#session.personal.apellidos"/></strong>
					</span> <span class="text-muted text-xs block">Administrador <b
							class="caret"></b></span>
				</span>
				</a>
				<ul class="dropdown-menu animated fadeInRight m-t-xs">
					<li><a href="profile.jsp">Perfil</a></li>
					<li class="divider"></li>
					<li><s:a action="Logout">Cerrar Sesión</s:a></li>
				</ul>
			</div>
			<div class="logo-element">SCG+</div>
		</li>
			<s:if test="%{#menu_left_activo=='dashboard'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Dashboard"><i
				class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></s:a>
		</li>
			<s:if test="%{#menu_left_activo=='movimientos'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Movimientos"><i class="fa fa-bar-chart-o"></i>
				<span class="nav-label">Reg. Movimientos</span></s:a></li>
			<s:if test="%{#menu_left_activo=='transferencias'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Transferencias"><i class="fa fa-exchange"></i>
				<span class="nav-label">Reg. Transferencias</span></s:a></li>
			<s:if test="%{#menu_left_activo=='gastos'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Gastos"><i class="fa fa-credit-card"></i>
				<span class="nav-label">Gastos</span></s:a></li>
			<s:if test="%{#menu_left_activo=='concepto'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Conceptos"><i class="fa fa-tags"></i>
				<span class="nav-label">Conceptos</span></s:a></li>
			<s:if test="%{#menu_left_activo=='usuarios'}">
			<s:set var="menu_left_activo_class" value="%{'active'}" />
			</s:if>
			<s:else>
			<s:set var="menu_left_activo_class" value="%{''}" />
			</s:else>
		<li class='<s:property value="#menu_left_activo_class"/>'><s:a action="Usuarios"><i class="fa fa-users"></i>
				<span class="nav-label">Usuarios</span></s:a></li>
	</ul>

</div>
</nav>