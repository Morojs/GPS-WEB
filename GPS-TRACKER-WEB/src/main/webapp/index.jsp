<%@page import="com.server.models.Vehicule"%>
<%@page import="com.server.dao.IVehicule"%>
<%@page import="javax.ejb.EJB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<c:set var="listVehicules" value="${vehiculesPoints}" />
<%
String dataPoints = (String) pageContext.getAttribute("listVehicules");
%>
<!DOCTYPE html>
<!-- 
* Bootstrap Simple Admin Template
* Version: 2.1
* Author: Alexis Luna
* Website: https://github.com/alexis-luna/bootstrap-simple-admin-template
-->
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Dashboard | Bootstrap Simple Admin Template</title>
<link href="assets/vendor/fontawesome/css/fontawesome.min.css"
	rel="stylesheet">
<link href="assets/vendor/fontawesome/css/solid.min.css"
	rel="stylesheet">
<link href="assets/vendor/fontawesome/css/brands.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/css/master.css" rel="stylesheet">
<link href="assets/vendor/flagiconcss/css/flag-icon.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			theme: "light2",
			animationEnabled: true,
			exportFileName: "",
			exportEnabled: true,
			title:{
				text: "MATRICULE/KM"
			},
			data: [{
				type: "pie",
				showInLegend: true,
				legendText: "{label}",
				toolTipContent: "{label}: <strong>{y}%</strong>",
				indexLabel: "{label} {y}%",
				dataPoints : <%out.print(dataPoints);%>
			}]
		});
		chart.render();

	}
</script>
</head>

<body>
	<div class="wrapper">

		<!-- ************************************** -->
		<jsp:include page="./sidebarheader.jsp" />
		<div id="body" class="active">
			<!-- navbar navigation component -->
			<jsp:include page="./navigationComponent.jsp" />
			<!-- end of navbar navigation -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-md-12 page-header">
							<div class="page-pretitle">VEHICULES</div>
							<h2 class="page-title">Acceuil</h2>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="content">
										<div class="head">
											<h5 class="mb-0">Liste des vehicules par matricule/Km</h5>
											<p class="text-muted"></p>
										</div>
										<div class="canvas-wrapper">
											<div id="chartContainer" style="height: 370px; width: 100%;"></div>
											<script
												src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card">
									<div class="content">
										<div class="head">
											<h5 class="mb-0">Vehicule Map View</h5>
											<p class="text-muted"></p>
										</div>
										<div class="canvas-wrapper">
											<div id="googleMap" style="width: 100%; height: 400px;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function myMap() {
			var mapProp = {
				center : new google.maps.LatLng(51.508742, -0.120850),
				zoom : 5,
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					mapProp);
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRf9TA0hZfrNpQZTr4wE7Hm9_XU5xyDYs&callback=myMap"></script>
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chartsjs/Chart.min.js"></script>
	<script src="assets/js/dashboard-charts.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>
