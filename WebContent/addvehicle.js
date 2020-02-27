
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