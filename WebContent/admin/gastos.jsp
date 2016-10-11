<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="GestionaUsuario" class="beans.GestionaUsuario" scope="session"/>
<%
if(GestionaUsuario.getLogin() == null){
	System.out.println("no hay session");
	String redirectURL = "../index.jsp";
    response.sendRedirect(redirectURL);
    return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>.:: GESCOM | Sistema de Control de Gastos ::.</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


</head>

<body>

	<div id="wrapper">

		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav metismenu" id="side-menu">
				<li class="nav-header">
					<div class="dropdown profile-element">
						<span> <img alt="image" class="img-circle"
							src="img/profile_small.jpg" />
						</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
							class="clear"> <span class="block m-t-xs"> <strong
									class="font-bold"><%= GestionaUsuario.getPersonal().getNombres()+" "+GestionaUsuario.getPersonal().getApellidos() %></strong>
							</span> <span class="text-muted text-xs block">Administrador <b
									class="caret"></b></span>
						</span>
						</a>
						<ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a href="profile.jsp">Perfil</a></li>
							<li class="divider"></li>
							<li><a href="usuario/logout.jsp">Cerrar Sesión</a></li>
						</ul>
					</div>
					<div class="logo-element">SGC+</div>
				</li>
				<li><a href="index.jsp"><i class="fa fa-th-large"></i> <span
						class="nav-label">Dashboards</span></a></li>
				<li><a href="movimientos.jsp"><i class="fa fa-bar-chart-o"></i>
						<span class="nav-label">Reg. Movimientos</span></a></li>
				<li><a href="transferencias.jsp"><i class="fa fa-exchange"></i>
						<span class="nav-label">Reg. Transferencias</span></a></li>
				<li class="active"><a href="gastos.jsp"><i
						class="fa fa-credit-card"></i> <span class="nav-label">Gastos</span></a>
				</li>
			</ul>

		</div>
		</nav>

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top white-bg" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
				</div>
				<ul class="nav navbar-top-links navbar-right">
					<li><span class="m-r-sm text-muted welcome-message">Bienvenidos
							al Sistema de Control de Gastos.</span></li>
					<li><a href="usuario/logout.jsp"> <i class="fa fa-sign-out"></i>
							Cerrar Sesión
					</a></li>
				</ul>

				</nav>
			</div>
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>Gastos</h2>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Inicio</a></li>
						<li class="active"><strong>Gastos</strong></li>
					</ol>
				</div>
				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Gastos</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
										<i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="#">Config option 1</a></li>
										<li><a href="#">Config option 2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="form-group">
										<div class="col-sm-12">

											<div class="input-group">
												<input type="text" id="txt_buscar" name="txt_buscar" placeholder="Buscar"
													class="input-sm form-control"> <span
													class="input-group-btn">
													<button type="button" id="btn_buscar" class="btn btn-sm btn-primary">
														Buscar!</button>
												</span>
											</div>

										</div>
									</div>
								</div>
								<br>
								<br>
								<div id="contenedor_tabla" class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>C&oacute;digo</th>
												<th>Tipo</th>
												<th>Fecha</th>
												<th>Concepto</th>
												<th>Importe</th>
												<th>Asignado a</th>
												<th>Tipo Doc. Ref.</th>
												<th>Nro Doc. Ref.</th>
												<th>Acción</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="pull-right">
					10GB of <strong>250GB</strong> Free.
				</div>
				<div>
					<strong>Copyright</strong> Gescom S.A.C &copy; 2016
				</div>
			</div>

		</div>
	</div>

	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Peity -->
	<script src="js/plugins/peity/jquery.peity.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>

	<!-- Peity -->
	<script src="js/demo/peity-demo.js"></script>

	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
			
			$("#btn_buscar").click(function(){
				if($.trim($('#txt_buscar').val())==''){
					$.ajax({
					   url:'movimientos/listar_all.jsp'
					}).done(function(data) {
						  $('#contenedor_tabla').html(data);
					});	
				}else{
					$.ajax({
					   url:'movimientos/listar.jsp',
					   data:'Codigo='+$('#txt_buscar').val()
					}).done(function(data) {
						  $('#contenedor_tabla').html(data);
					});
				}
			});
			
			$("#btn_buscar").click();
		});
	</script>

</body>
</html>