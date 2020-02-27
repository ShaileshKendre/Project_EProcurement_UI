


$(document).ready(function() {
function btn1(){
	
}
btn1();
$.ajax({
				url: "http://localhost:8090/bid/load/1"
		}).then(function(data) {

			 $('.sn').append(data.name);
			 $('.rn').append(data.refno);
			 $('.pd').append(data.publishdate);
			 $('.mb').append(data.minbid);
			 $('.bsa').append(data.bidstartat);

		});
});

/*$(document).ready(function() {
	$('#bt').click(function(){
		alert("hello");
		$.ajax({
				url: "http://localhost:8090/bid/load/1"
		}).then(function(data) {

			 $('.nm').append(data.name);
			 $('.rn').append(data.refno);
			 $('.pd').append(data.publishdate);
			 $('.mb').append(data.minbid);
			 $('.bsa').append(data.bidstartat);

		});
});
});*/