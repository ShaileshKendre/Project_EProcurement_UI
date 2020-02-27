
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
