<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="./login_check.jsp" />
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
   Date dNow = new Date();
   SimpleDateFormat ft = 
   new SimpleDateFormat ("yyyy/MM/dd");
   String currentDate = ft.format(dNow);
%>
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

    <link href="admin/css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="admin/css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="admin/css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href="admin/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="admin/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="admin/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="admin/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="admin/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="admin/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="admin/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="admin/css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">

    <link href="admin/css/plugins/select2/select2.min.css" rel="stylesheet">

    <link href="admin/css/animate.css" rel="stylesheet">
    <link href="admin/css/style.css" rel="stylesheet">


</head>

<body>

    <div id="wrapper">

    	<s:set var="menu_left_activo" value="%{'transferencias'}" />
		<jsp:include page="menu/menu_left.jsp" />

        <div id="page-wrapper" class="gray-bg">
	        <jsp:include page="menu/menu_top.jsp" />
	        
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Registrar Transferencias</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.jsp">Inicio</a>
                        </li>                        
                        <li class="active">
                            <strong>Registrar Transferencias</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
            <div class="col-lg-12" id="contenedor_respuesta">

                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Formulario Registrar Transferencias</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">Config option 1</a>
                                </li>
                                <li><a href="#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<form class="form-horizontal m-t-md" action="#">

								<div class="form-group">
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">UUNN Destino</label>
										<div class="col-sm-9">
											${gestiona_unidadnegocio.getCombo('cbo_iduunn', 'Escoga Concepto')}
											<!--
											<select id="cbo_iduunn" data-placeholder="Escoga UUNN Destino"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="1">Piura</option>
												<option value="2">Tumbes</option>
											</select>
											-->
										</div>
									</div>
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Concepto</label>
										<div class="col-sm-9">
											${gestiona_concepto.getCombo('cbo_concepto', 'Escoga Concepto')}
											<!-- 
											<select id="cbo_concepto" data-placeholder="Escoga Concepto"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="1">Pago de planilla</option>
												<option value="2">Pago de
													servicio de luz</option>
												<option value="3">Pago de
													servicio de agua</option>
												<option value="4">Pago
													de servicio de internet</option>
												<option value="5">Combustible</option>
												<option value="6">Movilidad</option>
												<option value="7">Otros</option>
											</select>
											-->
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Personal</label>
										<div class="col-sm-9" id="div_cbo_personal">
											${gestiona_personal.getCombo('cbo_personal', 'Escoga Personal')}
											<!-- 
											<select id="cbo_personal" data-placeholder="Escoga Personal"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="1">Alan Hugo Florez</option>
												<option value="2">Geynen Montenegro Cochas</option>
												<option value="3">Miguel Senmache Bravo</option>
											</select>
											-->
										</div>
									</div>
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Importe</label>
										<div class="col-sm-9">
											<input id="txt_importe" type="text" class="form-control"
												placeholder=""> <span
												class="help-block">S/ 999,999.99</span>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Tipo Doc. Ref.</label>
										<div class="col-sm-9">
											${session.usuario.getComboParametros(10, 'cbo_tipo_doc_ref', 'Escoga Tipo Doc. Ref.')}
											<!-- 
											<select id="cbo_tipo_doc_ref" data-placeholder="Escoga Personal"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="11">Boleta</option>
												<option value="12">Factura</option>
												<option value="13">Recibo</option>
											</select>
											 -->
										</div>
									</div>
									<div class="col-sm-3">
										<label class="col-sm-3 control-label">Nro. Doc. Ref.</label>
										<div class="col-sm-9">
											<input id="txt_nro_doc_ref" type="text" class="form-control"
												placeholder=""> <span
												class="help-block">999-99999999</span>
										</div>
									</div>
									<div class="col-sm-3">
										<label class="col-sm-3 control-label">Fecha</label>
										<div class="col-sm-9">
											<input id="txt_fecha" type="text" class="form-control"
												data-mask="9999/99/99" placeholder="" value="<%=currentDate%>"> <span
												class="help-block">yyyy/mm/dd</span>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12">
										<label class="col-sm-2">Observación</label>
										<div class="col-sm-10">
											<textarea id="txt_observacion" class="form-control"
												style="margin: 0px -90.3438px 0px 0px; width: 100%; height: 109px;"></textarea>
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
        $(document).ready(function(){
          
            $(".select2_demo_1").select2();
            $(".select2_demo_2").select2();
            $(".select2_demo_3").select2({
                placeholder: "Select a state",
                allowClear: true
            });
        });
        
        var config = {
             '.chosen-select'           : {},
             '.chosen-select-deselect'  : {allow_single_deselect:true},
             '.chosen-select-no-single' : {disable_search_threshold:10},
             '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
             '.chosen-select-width'     : {width:"95%"}
             }
         for (var selector in config) {
             $(selector).chosen(config[selector]);
         }

        $("#btn_grabar").click(function(){
			$.ajax({
			   url:'ajax_movimiento_transferir',
			   method:'POST',
			   data:{
				   	'codigo':'TRANSFERIR',
			   		'iduunndestino':$('#cbo_iduunn').val(),
			   		'idconcepto':$('#cbo_concepto').val(),
			   		'idpersonal':$('#cbo_personal').val(),
			   		'importe':$('#txt_importe').val(),
			   		'fecha':$('#txt_fecha').val(),
			   		'idtipodocref':$('#cbo_tipo_doc_ref').val(),
			   		'nrodocref':$('#txt_nro_doc_ref').val(),
			   		'observacion':$('#txt_observacion').val()
			   }
			}).done(function(data) {
				  $('#contenedor_respuesta').html(data);
			});
		});
        
        $("#cbo_iduunn").change(function(){
			$.ajax({
			   url:'ajax_personal_combo?iduunn='+$(this).val(),
			   method:'POST',
			}).done(function(data) {
				  $('#div_cbo_personal').html(data);
				  $('#cbo_personal').chosen(config[selector]);
			});
		});
    </script>

</body>
</html>