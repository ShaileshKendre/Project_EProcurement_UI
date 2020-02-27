<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
	
</script>

<script type="text/javascript">

$(document).ready(function () {  
		
    function qs() {
      var qsparam = new Array(10);
      var query = window.location.search.substring(1);
      var parms = query.split('&');
     for (var i = 0; i < parms.length; i++) {
     var pos = parms[i].indexOf('=');
     if (pos > 0)
    {
              var key = parms[i].substring(0, pos);
              var val = parms[i].substring(pos + 1);
              qsparam[i] = val;    
    }                          
                                             }
    
     console.log(qsparam[0]);
     console.log(qsparam[1]);
     var username=qsparam[0];
     var password=qsparam[1];
   
 /*  $.get("http://localhost:8080/login/"+ username + "/" + password, function(data,status) {
        consol.log(data);
    	  $("id1").append("<tr>"+ "<td>"+ data.pId+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.firstName+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.lastName+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.email +"</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.mobaile+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.address+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.username+ "</td>"+"</tr>"+
        		 "<tr>"+ "<td>"+ data.password+ "</td>"+"</tr>");
 
     
		}); */
      
    

        $.ajax({
          type: "GET",
          contentType: "application/json",
          dataType: "json",
          url:"http://localhost:8090/profile/login/"+ username + "/" + password,
          beforeSend: function (xhr) {
              xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
              xhr.setRequestHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE");
          },
         error: function (data) {
        	  window.location.href ="index.jsp";
             
          } ,
          success: function (data) {
            //  alert("success");
            //  console.log(data);
              $('#id1').val(data.pId) ;
               $("#id2").val(data.firstName)
                $("#id3").val(data.lastName)
                  $("#id4").val(data.email)
                    $("#id5").val(data.mobile)
                      $("#id6").val(data.address)
                        $("#id7").val(data.username)
                          $("#id8").val(data.password)

 

        	
          }
      });
    }


  
    var splitstr = qs();

    

          });

</script>
<body bgcolor="turquoise">
<div align="center">
	<table >
		<tr>
			<td>pId:</td>

			<td><input type="text" id="id1"  readonly/></td>





		</tr>
		<tr>
			<td>FirstName:</td>

			<td><input type="text" id="id2"  readonly/></td>

		</tr>
		<tr>
			<td>LastName:</td>
			<td><input type="text" id="id3"  readonly/></td>
		</tr>
		<tr>
			<td>EmailId:</td>
			<td><input type="text" id="id4" readonly /></td>
		</tr>

		<tr>
			<td>Mobile NO:</td>

			<td><input type="text" id="id5" readonly/></td>

		</tr>
		<tr>
			<td>Address:</td>
			<td><input type="text" id="id6" readonly/></td>
		</tr>
		<td>UserName:</td>
		<td><input type="text" id="id7" readonly/></td>


		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="text" id="id8" readonly/></td>


		</tr>
		<tr>
	</table>
</div>
</body>
</html>