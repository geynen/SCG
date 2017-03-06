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

<link href="admin/css/animate.css" rel="stylesheet">
<link href="admin/css/style.css" rel="stylesheet"> 
</head>

<body>
	<div id="wrapper">
		<s:set var="menu_left_activo" value="%{'dashboard'}" />
		<jsp:include page="menu/menu_left.jsp" />

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="menu/menu_top.jsp" />
			
			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-success pull-right">Mensual</span>
								<h5>Saldo</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins"><s:property value="getText('{0,number,#,##0.00}',{total})"/></h1>
								<div class="stat-percent font-bold text-success">
									<s:property value="getText('{0,number,#,##0.00}',{total_porcentaje})"/>% <i class="fa fa-bolt"></i>
								</div>
								<small>Total Saldo</small>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-info pull-right">Mensual</span>
								<h5>Transferencias Saldo</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins"><s:property value="getText('{0,number,#,##0.00}',{transferencias})"/></h1>
								<div class="stat-percent font-bold text-info">
									<s:property value="getText('{0,number,#,##0.00}',{transferencias_porcentaje})"/>% <i class="fa fa-level-up"></i>
								</div>
								<small>Total Transferencias Saldo</small>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-primary pull-right">Mensual</span>
								<h5>Ingresos</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins"><s:property value="getText('{0,number,#,##0.00}',{ingresos})"/></h1>
								<div class="stat-percent font-bold text-navy">
									100% <i class="fa fa-level-up"></i>
								</div>
								<small>Total Ingresos</small>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-danger pull-right">Mensual</span>
								<h5>Egresos</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins"><s:property value="getText('{0,number,#,##0.00}',{egresos})"/></h1>
								<div class="stat-percent font-bold text-danger">
									<s:property value="getText('{0,number,#,##0.00}',{egresos_porcentaje})"/>% <i class="fa fa-level-down"></i>
								</div>
								<small>Total Egresos</small>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Orders</h5>
								<div class="pull-right">
									<div class="btn-group">
										<button type="button" class="btn btn-xs btn-white active">Dia</button>
										<button type="button" class="btn btn-xs btn-white">Mes</button>
										<button type="button" class="btn btn-xs btn-white">Año</button>
									</div>
								</div>
							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-lg-9">
										<div class="flot-chart">
											<div class="flot-chart-content" id="flot-dashboard-chart"></div>
										</div>
									</div>
									<div class="col-lg-3">
										<ul class="stat-list">
											<li>
												<h2 class="no-margins">2,346</h2> <small>Total
													Gastos por periodo</small>
												<div class="stat-percent">
													48% <i class="fa fa-level-up text-navy"></i>
												</div>
												<div class="progress progress-mini">
													<div style="width: 48%;" class="progress-bar"></div>
												</div>
											</li>
											<li>
												<h2 class="no-margins ">4,422</h2> <small>Gastos
													Mensual</small>
												<div class="stat-percent">
													60% <i class="fa fa-level-down text-navy"></i>
												</div>
												<div class="progress progress-mini">
													<div style="width: 60%;" class="progress-bar"></div>
												</div>
											</li>
											<li>
												<h2 class="no-margins ">9,180</h2> <small>Gastos
													Anual</small>
												<div class="stat-percent">
													22% <i class="fa fa-bolt text-navy"></i>
												</div>
												<div class="progress progress-mini">
													<div style="width: 22%;" class="progress-bar"></div>
												</div>
											</li>
										</ul>
									</div>
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

	<!-- Flot -->
	<script src="admin/js/plugins/flot/jquery.flot.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.spline.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.resize.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.pie.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.symbol.js"></script>
	<script src="admin/js/plugins/flot/jquery.flot.time.js"></script>

	<!-- Peity -->
	<script src="admin/js/plugins/peity/jquery.peity.min.js"></script>
	<script src="admin/js/demo/peity-demo.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="admin/js/inspinia.js"></script>
	<script src="admin/js/plugins/pace/pace.min.js"></script>

	<!-- jQuery UI -->
	<script src="admin/js/plugins/jquery-ui/jquery-ui.min.js"></script>

	<!-- Jvectormap -->
	<script src="admin/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
	<script src="admin/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

	<!-- EayPIE -->
	<script src="admin/js/plugins/easypiechart/jquery.easypiechart.js"></script>

	<!-- Sparkline -->
	<script src="admin/js/plugins/sparkline/jquery.sparkline.min.js"></script>

	<!-- Sparkline demo data  -->
	<script src="admin/js/demo/sparkline-demo.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$('.chart').easyPieChart({
								barColor : '#f8ac59',
								//                scaleColor: false,
								scaleLength : 5,
								lineWidth : 4,
								size : 80
							});

							$('.chart2').easyPieChart({
								barColor : '#1c84c6',
								//                scaleColor: false,
								scaleLength : 5,
								lineWidth : 4,
								size : 80
							});

							var data2 = [ [ gd(2012, 1, 1), 7 ],
									[ gd(2012, 1, 2), 6 ],
									[ gd(2012, 1, 3), 4 ],
									[ gd(2012, 1, 4), 8 ],
									[ gd(2012, 1, 5), 9 ],
									[ gd(2012, 1, 6), 7 ],
									[ gd(2012, 1, 7), 5 ],
									[ gd(2012, 1, 8), 4 ],
									[ gd(2012, 1, 9), 7 ],
									[ gd(2012, 1, 10), 8 ],
									[ gd(2012, 1, 11), 9 ],
									[ gd(2012, 1, 12), 6 ],
									[ gd(2012, 1, 13), 4 ],
									[ gd(2012, 1, 14), 5 ],
									[ gd(2012, 1, 15), 11 ],
									[ gd(2012, 1, 16), 8 ],
									[ gd(2012, 1, 17), 8 ],
									[ gd(2012, 1, 18), 11 ],
									[ gd(2012, 1, 19), 11 ],
									[ gd(2012, 1, 20), 6 ],
									[ gd(2012, 1, 21), 6 ],
									[ gd(2012, 1, 22), 8 ],
									[ gd(2012, 1, 23), 11 ],
									[ gd(2012, 1, 24), 13 ],
									[ gd(2012, 1, 25), 7 ],
									[ gd(2012, 1, 26), 9 ],
									[ gd(2012, 1, 27), 9 ],
									[ gd(2012, 1, 28), 8 ],
									[ gd(2012, 1, 29), 5 ],
									[ gd(2012, 1, 30), 8 ],
									[ gd(2012, 1, 31), 25 ] ];

							var data3 = [ [ gd(2012, 1, 1), 800 ],
									[ gd(2012, 1, 2), 500 ],
									[ gd(2012, 1, 3), 600 ],
									[ gd(2012, 1, 4), 700 ],
									[ gd(2012, 1, 5), 500 ],
									[ gd(2012, 1, 6), 456 ],
									[ gd(2012, 1, 7), 800 ],
									[ gd(2012, 1, 8), 589 ],
									[ gd(2012, 1, 9), 467 ],
									[ gd(2012, 1, 10), 876 ],
									[ gd(2012, 1, 11), 689 ],
									[ gd(2012, 1, 12), 700 ],
									[ gd(2012, 1, 13), 500 ],
									[ gd(2012, 1, 14), 600 ],
									[ gd(2012, 1, 15), 700 ],
									[ gd(2012, 1, 16), 786 ],
									[ gd(2012, 1, 17), 345 ],
									[ gd(2012, 1, 18), 888 ],
									[ gd(2012, 1, 19), 888 ],
									[ gd(2012, 1, 20), 888 ],
									[ gd(2012, 1, 21), 987 ],
									[ gd(2012, 1, 22), 444 ],
									[ gd(2012, 1, 23), 999 ],
									[ gd(2012, 1, 24), 567 ],
									[ gd(2012, 1, 25), 786 ],
									[ gd(2012, 1, 26), 666 ],
									[ gd(2012, 1, 27), 888 ],
									[ gd(2012, 1, 28), 900 ],
									[ gd(2012, 1, 29), 178 ],
									[ gd(2012, 1, 30), 555 ],
									[ gd(2012, 1, 31), 993 ] ];

							var dataset = [ {
								label : "Numero de Movimientos",
								data : data3,
								color : "#1ab394",
								bars : {
									show : true,
									align : "center",
									barWidth : 24 * 60 * 60 * 600,
									lineWidth : 0
								}

							}, {
								label : "Gastos",
								data : data2,
								yaxis : 2,
								color : "#1C84C6",
								lines : {
									lineWidth : 1,
									show : true,
									fill : true,
									fillColor : {
										colors : [ {
											opacity : 0.2
										}, {
											opacity : 0.4
										} ]
									}
								},
								splines : {
									show : false,
									tension : 0.6,
									lineWidth : 1,
									fill : 0.1
								},
							} ];

							var options = {
								xaxis : {
									mode : "time",
									tickSize : [ 3, "day" ],
									tickLength : 0,
									axisLabel : "Date",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : 'Arial',
									axisLabelPadding : 10,
									color : "#d5d5d5"
								},
								yaxes : [ {
									position : "left",
									max : 1070,
									color : "#d5d5d5",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : 'Arial',
									axisLabelPadding : 3
								}, {
									position : "right",
									clolor : "#d5d5d5",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : ' Arial',
									axisLabelPadding : 67
								} ],
								legend : {
									noColumns : 1,
									labelBoxBorderColor : "#000000",
									position : "nw"
								},
								grid : {
									hoverable : false,
									borderWidth : 0
								}
							};

							function gd(year, month, day) {
								return new Date(year, month - 1, day).getTime();
							}

							var previousPoint = null, previousLabel = null;

							$
									.plot($("#flot-dashboard-chart"), dataset,
											options);

							var mapData = {
								"US" : 298,
								"SA" : 200,
								"DE" : 220,
								"FR" : 540,
								"CN" : 120,
								"AU" : 760,
								"BR" : 550,
								"IN" : 200,
								"GB" : 120,
							};

							$('#world-map').vectorMap({
								map : 'world_mill_en',
								backgroundColor : "transparent",
								regionStyle : {
									initial : {
										fill : '#e4e4e4',
										"fill-opacity" : 0.9,
										stroke : 'none',
										"stroke-width" : 0,
										"stroke-opacity" : 0
									}
								},

								series : {
									regions : [ {
										values : mapData,
										scale : [ "#1ab394", "#22d6b1" ],
										normalizeFunction : 'polynomial'
									} ]
								},
							});
						});
	</script>
</body>
</html>