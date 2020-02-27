

$(document).ready(function() {
function btn2(){
	
}
btn2();
$.ajax({
				url: "http://localhost:8090/bid/load/2"
		}).then(function(data) {

			 $('.nm').append(data.name);
			 $('.rn').append(data.refno);
			 $('.pd').append(data.publishdate);
			 $('.mb').append(data.minbid);
			 $('.bsa').append(data.bidstartat);

		});
});