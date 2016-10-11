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

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="css/plugins/chosen/chosen.css" rel="stylesheet">

    <link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">

    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><%= GestionaUsuario.getPersonal().getNombres()+" "+GestionaUsuario.getPersonal().getApellidos() %></strong>
                             </span> <span class="text-muted text-xs block">Administrador <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.jsp">Perfil</a></li>                            
                            <li class="divider"></li>
                            <li><a href="usuario/logout.jsp">Cerrar Sesión</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        SGC+
                    </div>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a>                    
                </li>
                <li>
                    <a href="movimientos.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Reg. Movimientos</span></a>
                </li>
                <li class="active">
                    <a href="transferencias.jsp"><i class="fa fa-exchange"></i> <span class="nav-label">Reg. Transferencias</span></a>
                </li> 
                <li>
                    <a href="gastos.jsp"><i class="fa fa-credit-card"></i> <span class="nav-label">Gastos</span></a>
                </li>                 
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">     
        	<div class="navbar-header">
            	<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>            
        	</div>   
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Bienvenidos al Sistema de Control de Gastos.</span>
                </li>
                <li>
                    <a href="usuario/logout.jsp">
                        <i class="fa fa-sign-out"></i> Cerrar Sesión
                    </a>
                </li>               
            </ul>

        </nav>
        </div>
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
											<select id="cbo_iduunn" data-placeholder="Escoga UUNN Destino"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="1">Piura</option>
												<option value="2">Tumbes</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Concepto</label>
										<div class="col-sm-9">
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
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-6">
										<label class="col-sm-3 control-label">Personal</label>
										<div class="col-sm-9">
											<select id="cbo_personal" data-placeholder="Escoga Personal"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="1">Alan Hugo Florez</option>
												<option value="2">Geynen Montenegro Cochas</option>
												<option value="3">Miguel Senmache Bravo</option>
											</select>
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
											<select id="cbo_tipo_doc_ref" data-placeholder="Escoga Personal"
												class="chosen-select" style="min-width: 100%" tabindex="2">
												<option value="">Seleccione</option>
												<option value="11">Boleta</option>
												<option value="12">Factura</option>
												<option value="13">Recibo</option>
											</select>
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
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.js"></script>

    <!-- Input Mask-->
    <script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>


    <!-- MENU -->
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>



    <!-- Select2 -->
    <script src="js/plugins/select2/select2.full.min.js"></script>

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
			   url:'movimientos/transferir.jsp',
			   method:'POST',
			   data:{
				   	'Codigo':'TRANSFERIR',
			   		'IdUUNN':$('#cbo_iduunn').val(),
			   		'IdConcepto':$('#cbo_concepto').val(),
			   		'IdPersonal':$('#cbo_personal').val(),
			   		'Importe':$('#txt_importe').val(),
			   		'Fecha':$('#txt_fecha').val(),
			   		'IdTipoDocRef':$('#cbo_tipo_doc_ref').val(),
			   		'NroDocRef':$('#txt_nro_doc_ref').val(),
			   		'Observacion':$('#txt_observacion').val()
			   }
			}).done(function(data) {
				  $('#contenedor_respuesta').html(data);
			});
		});
    </script>

</body>
</html>