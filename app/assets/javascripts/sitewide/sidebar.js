
function popularload(){
$.ajax({
	type: "GET",
    url : '/artist/popular',
    success: function(data){
    	$('body').html(data);
    }
  });
};

function countryload(){
$.ajax({
	type: "GET",
    url : '/artist/country',
    success: function(data){
    	$('body').html(data);
    }
  });
};

function genreload(){
$.ajax({
	type: "GET",
    url : '/artist/genre',
    success: function(data){
    	$('body').html(data);
    }
  });
};