function ajaxmodal(params){
	$.ajax({
	method: "POST",
	url: "/assets/components/ajaxmodal/action.php",
	data: params,
	dataType : "json",
	})
	.done(function( data ) {
		//console.info(data);
		$('body').append(data.modal);
		$('.ajaxmodal-overlay').addClass('active');
		$('.ajaxmodal').addClass('active');
	});
}
$(document).on('click','.close-ajaxmodal',function(){
    $('.ajaxmodal-overlay').removeClass('active');
	$('.ajaxmodal').removeClass('active');
	$('#ajaxmodal').remove();
});