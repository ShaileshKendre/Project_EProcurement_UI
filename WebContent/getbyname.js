$(document).ready(function(){
	$("#getbyname").click(function(){
	var name = $("#nameinput").val();
	
	
	$.ajax({
		type:"Get",
		url:"http://localhost:8080/e/getsupplierbyname/"+name
		}).then(function(data){
		
		$('.id').append(data.id);
		$('.name').append(data.name);
		$('.phone').append(data.phone);
		$('.email').append(data.email);

	});
	
	});
});