

$(document).ready(function() {
function btn4(){
	
}
btn4();
$.ajax({
				url: "http://localhost:8090/bid/load/4"
		}).then(function(data) {

			 $('.nm').append(data.name);
			 $('.rn').append(data.refno);
			 $('.pd').append(data.publishdate);
			 $('.mb').append(data.minbid);
			 $('.bsa').append(data.bidstartat);

		});
});