
$('#country').click(function(){
	aload("/artist/country")
})

$('#genre').click(function(){
	aload("/artist/genre")
})

$('#popular').click(function(){
	aload("/artist/popular")
})


function aload(){
  $.ajax({
    url : url,
    success: function(data){
       $('body').html(data);
    }
  });
}