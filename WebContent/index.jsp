<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	
</script>
<script type="text/javascript">
	$(document).ready(function() {
/* 
		$('#btn').on('click', function() {
			var username = ($('#txt1').val());
			var password = ($('#txt2').val());
			$.get("http://localhost:8080/login/"+ username + "/" + password, function(data,status) {


				});

		});
		
 */
		  $("#btn").on("click", function () {
	            var url = "myprofile1.jsp?username=" + encodeURIComponent($("#txt1").val()) + "&password=" + encodeURIComponent($("#txt2").val());
	              window.location.href = url;
	        });
	});
</script>

<body bgcolor="turquoise">
<div align="center">
	<h1 ><font color="white">WELCOME</font>
</h1>

	USERNAME :
	<input type="text" id="txt1" name="username" /><br></br>
	PASSWORD :
	 <input type="password" id="txt2" name="password" /><br></br><br></br>
	<button id="btn">LOGIN</button>
</div>



</body>
</html>