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
font-size: 100%
}

* {
  box-sizing: border-box;
}

/* Full-width input fields */
input[type=text],[type=number] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: activeborder;
  background: white;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}
   
   /* Set a style for the submit button */
.btn {
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
$("#btn").click(function(){
	var flag=0;
	var id=$("#tid1").val();
	console.log(id);
	var ph=$("#tid3").val();
	console.log(ph);
	if(id==""){
		document.getElementById("divm1").innerHTML="Enter the Digit";
		flag=1;
	}
	if(ph==""){
		document.getElementById("divm3").innerHTML="Enter the Digit";
		flag=1;
	}

	if(flag==0){	
var d='{"sid":'+$("#tid1").val()+
',"sname":"'+$("#tid2").val()+
'","sphone":'+$("#tid3").val()+
',"semailid":"'+$("#tid4").val()+
'","saddress":"'+$("#tid5").val()+
'"}';

console.log(d);
$.ajax({
type:"PUT",
url:"http://localhost:8088/api/editsupplier",
data:d,
contentType:"application/json",
dataType:"json",
success:function(data){
	console.log(data);
	
},
error:function(response){
	

	var myObj, x;
	myObj =jQuery.parseJSON(response.responseText);


	for (x in myObj) {

		if(x=="sid")
		{
		document.getElementById("divm1").innerHTML = myObj[x];
		}else if(x=="sname")
		{
		document.getElementById("divm2").innerHTML = myObj[x];
		}else if(x=="sphone")
		{
		document.getElementById("divm3").innerHTML = myObj[x];
		}else if(x=="semailid")
		{
		document.getElementById("divm4").innerHTML = myObj[x];
		}else if(x=="saddress")
		{
		document.getElementById("divm5").innerHTML = myObj[x];
		}else
		{
		document.getElementById("divm").innerHTML = myObj[x];
		}
		
	  console.log(myObj[x]);
		
}

}


	});
}
	});
	});
</script>
  
</head>
<body>
<h1 align="center">EDIT SUPPLIER</h1>
<hr>

<div class="container">
Enter ID:  <input type="number" id="tid1">
<p id="divm1"></p>
Enter Name:  <input type="text" id="tid2">
<p id="divm2"></p>
Enter Phone:  <input type="number" id="tid3">
<p id="divm3"></p>
Enter EmailId:  <input type="text" id="tid4">
<p id="divm4"></p>
Enter Address:  <input type="text" id="tid5">
<p id="divm5"></p>
<br><br>
<button type="submit" class="btn btn-primary" id="btn" class="btn">Edit Supplier</button>
<div id="divm"></div>
</div>

</body>
</html>