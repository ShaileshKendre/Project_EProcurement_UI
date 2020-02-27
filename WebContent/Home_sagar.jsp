<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style_sagar.css">
<title>WelCome To Transport System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	//------------------ GET ALL tucklist -------------------------
	$("#getall").click(function(){
		$.get("http://localhost:8090/trucks/retrive",function(data,status){
			console.log();
			data.forEach(function(dt){
				var idgen= 0;
				$("#tdata").append("<tr>"+"<td>"+dt.truck_Id+"</td>"+"<td>"+dt.truck_No+"</td>"+"</tr>"
								);
			});
		});
		
//		$("#tableHead").click(function(){
//			alert("Click on Truck for Booking ")
//			})
	});
	//------------------ GET Truck -------------------------
	$("#getTruck").click(function(){
			var id = $("#truckinput").val();
			var date = $("#inputdate").val();
			
			$.get("http://localhost:8090/trucks/"+id,function(data,status){
//				alert(data.bookdates.booked_dt1+"===="+id+"===="+date);
				if(date == data.bookdates.booked_dt1){
					alert("ALREADY BOOK...PLEASE SELECT ANOTHER DATE")
					}else if(date == data.bookdates.booked_dt2){
					alert("ALREADY BOOK...PLEASE SELECT ANOTHER DATE")
					}else if (date == data.bookdates.booked_dt3){
					alert("ALREADY BOOK...PLEASE SELECT ANOTHER DATE")
					}else if (date == data.bookdates.booked_dt4){
					alert("ALREADY BOOK...PLEASE SELECT ANOTHER DATE")
					}else if (date == data.bookdates.booked_dt1){
					alert("ALREADY BOOK...PLEASE SELECT ANOTHER DATE")
					} else {
						var URL = "http://localhost:8090/update";

				        var dataObject = { 'truck_Id': id , 'date': date , 'bookdates':{'booking_Id':null ,'booked_dt1':null,'booked_dt2':null,'booked_dt3':null,'booked_dt4':null,'booked_dt5':date} };
		
				        alert(JSON.stringify(dataObject));
				         $.ajax({
				            url: URL,
				            type: 'PUT',    
				            data: JSON.stringify(dataObject),
				            dataType: 'application/json',
				            success: function(result) {
				                alert("Date Confirmed And Booked....");
				            }
				        });

 						}

 //			$("#tdata1").append("<tr>"+"<td>"+data.bookdates.booked_dt1+"</td>"+"<td>"+data.name+"</td>"+"<td>"+data.phNumber+"</td>"+"<td>"+data.dept+"</td>"+"<td>"+data.cid+"</td>"+"<td>"+data.status+"</td>"+"<td>"+data.createdDate+"</td>"+"<td>"+data.modifiedDate+"</td>"+"<td>"+data.createdBy+"</td>"+"<td>"+data.modifiedBy+"</td>"+"</tr>"
//			); 
			});
			});
//	});
	//========================================================================================
					});
</script>
</head>
<body class="bg">
	<h1 style="color: white;">
		<center>WELCOME TO THE E-PROCUREMENT</center>
	</h1>
	<p align="Center" style="font-size: 20px; color: white;">TRANSPORT
		DIVISION</p>

	<p align="Center" class="head1">TO SHOW ALL TRUCK LIST</p><br />
	<center><button class="button" id="getall">Truck List</button></center>


	<table id="tdata">
		<caption class="caption" >All Truck List Available </caption>
	
		<tr id="tableHead"}">
			<th> Truck ID </th>
			<th> Truck Number </th>
		</tr>

	</table>
	<br />
		<p align="Center" class="head1">ENTER TRUCK NUMBER FOR AVAILABILITY </p><br />
		
		<center><input type="text"  id="truckinput" placeholder="Enter Truck Number" />             <input type="date" id="inputdate" placeholder="Enter Your Date Here" ></center>
		<center><button class="button" id="getTruck"> BOOK / AVAILABILITY</button></center>
		
</body>
</html>