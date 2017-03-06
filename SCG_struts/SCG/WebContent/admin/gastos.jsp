<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="./login_check.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>.:: GESCOM | Sistema de Control de Gastos ::.</title>

<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="admin/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="admin/css/animate.css" rel="stylesheet">
<link href="admin/css/style.css" rel="stylesheet">


</head>

<body>

	<div id="wrapper">

		<s:set var="menu_left_activo" value="%{'gastos'}" />
		<jsp:include page="menu/menu_left.jsp" />

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="menu/menu_top.jsp" />
			
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
					<div class="col-lg-12" id="contenedor_respuesta">

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
	<script src="admin/js/jquery-2.1.1.js"></script>
	<script src="admin/js/bootstrap.min.js"></script>
	<script src="admin/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="admin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Peity -->
	<script src="admin/js/plugins/peity/jquery.peity.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="admin/js/inspinia.js"></script>
	<script src="admin/js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="admin/js/plugins/iCheck/icheck.min.js"></script>

	<!-- Peity -->
	<script src="admin/js/demo/peity-demo.js"></script>

	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
			
			$("#btn_buscar").click(function(){
				if($.trim($('#txt_buscar').val())==''){
					$.ajax({
					   url:'ajax_movimientos_listar_all'
					}).done(function(data) {
						  $('#contenedor_tabla').html(data);
						  
						  eventos();
					});	
				}else{
					$.ajax({
					   url:'ajax_movimientos_buscar',
					   data:'codigo='+$('#txt_buscar').val()
					}).done(function(data) {
						  $('#contenedor_tabla').html(data);
						  
						  eventos();
					});
				}
			});
			
			$("#btn_buscar").click();
			
			function eventos(){
				$(".btn_eliminar").click(function(){
					if(confirm('Esta seguro que desea eliminar el movimiento?')){
						$.ajax({
						   url:'ajax_movimiento_eliminar',
						   method:'POST',
						   data:{
							   	'codigo':'ELIMINAR',
							   	'idmovimiento':$(this).data('id')
						   }
						}).done(function(data) {
							  $('#contenedor_respuesta').html(data);
						});
					}
				});
			}
		});
	</script>

</body>
</html>