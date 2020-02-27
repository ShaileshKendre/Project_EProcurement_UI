
$(document).ready(function(){
	$("#getbyid").click(function(){
	var id = $("#IDinput").val();
	
	
	$.ajax({
		type:"Get",
		url:"http://localhost:8080/e/getsupplierbyid/"+id
		}).then(function(data){
		
		$('.id').append(data.id);
		$('.name').append(data.name);
		$('.phone').append(data.phone);
		$('.email').append(data.email);

	});
	
	});
});

