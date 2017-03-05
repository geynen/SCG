<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="../login_check.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>.:: GESCOM | Sistema de Control de Gastos ::.</title>

<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="admin/css/plugins/iCheck/custom.css" rel="stylesheet">

<link href="admin/css/plugins/chosen/chosen.css" rel="stylesheet">

<link href="admin/css/plugins/colorpicker/bootstrap-colorpicker.min.css"
	rel="stylesheet">

<link href="admin/css/plugins/cropper/cropper.min.css" rel="stylesheet">

<link href="admin/css/plugins/switchery/switchery.css" rel="stylesheet">

<link href="admin/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

<link href="admin/css/plugins/nouslider/jquery.nouislider.css"
	rel="stylesheet">

<link href="admin/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

<link href="admin/css/plugins/ionRangeSlider/ion.rangeSlider.css"
	rel="stylesheet">
<link href="admin/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">

<link
	href="admin/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">

<link href="admin/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

<link href="admin/css/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet">

<link href="admin/css/plugins/select2/select2.min.css" rel="stylesheet">

<link href="admin/css/animate.css" rel="stylesheet">
<link href="admin/css/style.css" rel="stylesheet">


</head>

<body>

	<div id="wrapper">
	
		<s:set var="menu_left_activo" value="%{'concepto'}" />
		<jsp:include page="../menu/menu_left.jsp" />		

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="../menu/menu_top.jsp" />
			
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>Registrar Concepto</h2>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Inicio</a></li>
						<li class="active"><strong>Registrar Concepto</strong></li>
					</ol>
				</div>
				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12" id="contenedor_respuesta">

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Registrar Concepto</h5>
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
								<form class="form-horizontal m-t-md" action="#">
								
									<div class="form-group">
										<div class="col-sm-12">
											<label class="col-sm-2">Nombre</label>
											<div class="col-sm-10">
												<input id="txt_nombre" class="form-control">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-12">
											<label class="col-sm-2">Descripci&oacute;n</label>
											<div class="col-sm-10">
												<input id="txt_descripcion" class="form-control">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-2 pull-right">
											<button class="btn btn-primary" id="btn_grabar" type="button">Guardar</button>
											<button class="btn btn-danger" type="reset">Cancelar</button>
										</div>
									</div>
								</form>
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

	<!-- Custom and plugin javascript -->
	<script src="admin/js/inspinia.js"></script>
	<script src="admin/js/plugins/pace/pace.min.js"></script>
	<script src="admin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Chosen -->
	<script src="admin/js/plugins/chosen/chosen.jquery.js"></script>

	<!-- Input Mask-->
	<script src="admin/js/plugins/jasny/jasny-bootstrap.min.js"></script>


	<!-- MENU -->
	<script src="admin/js/plugins/metisMenu/jquery.metisMenu.js"></script>



	<!-- Select2 -->
	<script src="admin/js/plugins/select2/select2.full.min.js"></script>

	<script>
		$(document).ready(function() {
			$("#btn_grabar").click(function(){
				console.log("btn_grabar");
				$.ajax({
				   url:'ajax_concepto_nuevo',
				   method:'POST',
				   data:{
					   	'codigo':'NUEVO',
				   		'nombre':$('#txt_nombre').val(),
				   		'descripcion':$('#txt_descripcion').val()
				   }
				}).done(function(data) {
					  $('#contenedor_respuesta').html(data);
				});
			});
		});		
	</script>

</body>
</html>