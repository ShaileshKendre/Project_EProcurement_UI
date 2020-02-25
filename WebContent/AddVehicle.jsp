<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	 src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
</script>
<script>
	$(document).ready(
			function() {

				$("#btn").click(
						function() {
							var veh = $("#vehicle").val();
							var wt = $("#weight").val();

							$.post("http://localhost:8090/vehicle/addvehicle/"
									+ veh + "/" + wt, function(data, status) {

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


	<h2 style="color: red;" align="center">Welcome to Vehicle Registration Portal...!!!!</h2>
	<div align="center">
		<table border="2">
			<tr>
				<td><b>Vehicle No.:</b></td>
				<td><input type="text" id="vehicle" /></td>
			</tr>
			<tr>
				<td><b>Max Capacity:</b></td>
				<td><input type="text" id="weight" /></td>
			</tr>

			<tr>
			<td></td>
				<td><button id="btn">Submit</button></td>
			</tr>
		</table>
		 <br>
		 <br>
		 <br>
		 <br>
		 <br>
		 <br>
		  <a href="index.jsp">Back To Home</a>

	</div>

</body>
</html>