<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
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
<title>Forms | Bootstrap Simple Admin Template</title>
<link href="assets/vendor/fontawesome/css/fontawesome.min.css"
	rel="stylesheet">
<link href="assets/vendor/fontawesome/css/solid.min.css"
	rel="stylesheet">
<link href="assets/vendor/fontawesome/css/brands.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/css/master.css" rel="stylesheet">

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

					<jsp:include page="./vehicules.jsp" />

				
			</div>
		</div>
	</div>
	</div>
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chartsjs/Chart.min.js"></script>
	<script src="assets/js/dashboard-charts.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</body>

</html>