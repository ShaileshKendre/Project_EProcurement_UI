<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="shortcut icon" href="#">
  
  <style>
body {background-color: powderblue;}

table, th, td {
  border: 2px solid black;
}

.outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}

</style>
  
<script>
$(document).ready(function(){
	$("#t1").hide();
	$("#bnew").hide();
	$("#bedit").hide();
	$("#bdelete").hide();

	
	$("#btnlist").click(function(){

	$.ajax({

	type:"GET",
	url:"http://localhost:8088/api/getsupplierlist",
	success:function(data){

		$("#t1").show();
		$("#bnew").show();
		$("#bedit").show();
		$("#bdelete").show();
	console.log(data);

	var data=data;

	data.forEach(function(dt){

	$("#tdata").append("<tr>"+"<td>"+dt.sid+"</td>"+
	"<td>"+dt.sname+"</td>"+"<td>"+dt.sphone+"</td>"+"<td>"+dt.semailid+"</td>"+"<td>"+dt.saddress+"</td>"+"</tr>");
	}
	

	)}
	});
	});
	});


	</script>

	</head>
	<body>
	<div class="container">
	<div align="center">
	<button type="submit" class="btn btn-primary" id="btnlist">Get List</button>
	</div>
	<table class="table table-bordered" id="t1"> 
	<thead>
	<tr>
			<th>id</th>
	    	<th>name</th>
	    	<th>phone</th>
	    	<th>emailid</th>
	    	<th>address</th>
	</tr>
	</thead>
	<tbody id="tdata">
	</tbody>
	 </table>
	 
	 <div class="outer">
	 <div class="inner">
	 <a href="NewSupplier.jsp">
	<button type="button" id="bnew" class="bnew">New</button>
	</a>
	</div>
	
	<div class="inner">
	<a href="EditSupplier.jsp">
	<button type="button" id="bedit" class="bedit">Edit</button>
	</a>
	</div>
	
	<div class="inner">
	<a href="DeleteSupplier.jsp">
	<button type="button" id="bdelete" class="bdelete">Delete</button>
	</a>
	</div>
	</div>
	
	
	</div>
	
	</body>

</html>