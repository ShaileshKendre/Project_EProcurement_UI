

$(document).ready(function() {
function btn3(){
	
}
btn3();
$.ajax({
				url: "http://localhost:8090/bid/load/3"
		}).then(function(data) {

			 $('.nm').append(data.name);
			 $('.rn').append(data.refno);
			 $('.pd').append(data.publishdate);
			 $('.mb').append(data.minbid);
			 $('.bsa').append(data.bidstartat);

		});
});