<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</script>
<script>
	$(document)
			.ready(function() {
$("#btn1").click(function() {
	$.get("http://localhost:8090/vehicle/retrieveall",function(data,status) {
	console.log(data);
	var data = data;
	data.forEach(function(dt) {
	$("#tdata").append("<tr>"+ "<td>"+ dt.vehicleNo+ "</td>"+ "<td>"+ dt.maxLoad+ "</td>"+ "<td>"+ dt.loadedWt+ "</td>"+ "</tr>");
				});
				});
				});
				});

	$(document).ready(function()
			 {$("#btn").click(function() {
							var veh = $("#vehicle").val();
							var wt = $("#weight").val();
							$.put("http://localhost:8090/vehicle/addloadtovehicle/"+ veh + "/" + wt, function(data,status) {
										console.log(data);
										var data = data;
										alert(data);
			});
			});
			});
</script>
<meta charset="ISO-8859-1">
<title>Vehicle Loader</title>


</head>
<body bgcolor="turquoise">


	<h2 style="color: red;" align="center">Welcome to Dashboard...!!!!</h2>
	<div align="center">
		<table border="2">
			<tbody align="center">
				<tr>
					<td><b>Vehicle No.:</b></td>
					<td><input type="text" id="vehicle" /></td>
				</tr>
				<tr>
					<td><b>Add Units:</b></td>
					<td><input type="text" id="weight" /></td>
				</tr>
				<tr>
					<td><button id="btn1">List Vehicles</button></td>
					<td><button id="btn">Submit</button></td>
				</tr>
			</tbody>
		</table>
		<br> <br> <a href="index.jsp">Back To Home</a>
	</div>
	<div align="center">
		<br> <br>
		<table style="width: 50%; border: 2px black solid;">
			<tbody align="center" id="tdata">
			<thead>
				<tr>
					<th>Vehicle No.</th>
					<th>Max Capacity</th>
					<th>Loaded Units</th>
				</tr>
			</thead>

			</tbody>

		</table>
	</div>

</body>
</html>