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
   
   body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: powderblue;
  font-size: 150%;
}

p {
font-family:courier;
color: red;
font-size: 100%;
}

* {
  box-sizing: border-box;
}

/* Full-width input fields */
input[type=number] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: activeborder;
  background: white;
}

input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}
   
   /* Set a style for the submit button */
.bdelete {
  background-color: mediumseagreen;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}


</style>


<script>
$(document).ready(function(){
$("#bdelete").click(function(){

	var flag=0;
	var id=$("#tid").val();

	
	if(id==""){
		document.getElementById("divm").innerHTML="Enter the Digit";
		flag=1;
	}
	if(flag==0){

var d='{"sid":'+$("#tid").val()+'}';
console.log(d);

$.ajax({

type:"DELETE",
url:"http://localhost:8088/api/deletesupplier",
data:d,
contentType:"application/json",
dataType:"json",
success:function(data){
	console.log(data);
	$(".divm").html(data);
},
error:function(response){

	console.log(response.responseText);
	var x,myobj;

	myobj=JQuerry.parseJSON(response.responseText);

	for(x in myobj){

		if(s=="sid")
		{
			document.getElementById("divm").innerHTML=myobj[x];
		}

		document.getElementById("divm").innerHTML=myobj[x];
		}
	
}

	});
	}
	});
	});


	</script>
</head>
<body>
<h1 align="center">DELETE SUPPLIER</h1>
<hr>
<div class="container">
Enter ID <input type="number" id="tid">
<br>
<p id="divm"></p>
<br>
<button type="submit" class="btn btn-primary" id="bdelete" class="bdelete">Delete</button>

</div>
</body>
</html>