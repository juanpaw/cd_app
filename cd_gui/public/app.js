var host='https://cdapp.herokuapp.com/cd_api/public/';

$(document).ready(function($) {

	storage=Storages.localStorage;
	var lg=storage.get('logged');
	
	if(lg===null){
		
		$.ajax({
				url: 'views/login.html',
				type: 'POST'
			})
			.done(function(data) {
				
				$(data).appendTo('body');
				$('.us_err').hide();				
				$('.usua_codi').hide();
			});	

		}else{
			main();
		}			
		$(document).on('click','.salir', function(event) {
			storage.remove('logged');
			location.reload();
		});
		$(document).on('click','.btn_login', function(event) {
			event.preventDefault();
			/* Act on the event */
			$.ajax({
				url: host+'api/user/l',
				type: 'post',
				data: $('form').serialize(),
			})					
			.done(function(data){						

				if(data[0]!=0){
					
					$('.alert-danger').hide();
					storage.set('logged',data[0]);
					
					$('body').empty();
					main();						

				}else{
					$('.alert-danger').show();
				}
			});				
		});	
	
	$('.modal').hide();				
});

	function main(){
		

		$.ajax({
				url: 'views/main.html',
				type: 'POST'
			})
			.done(function(data) {					
				$(data).appendTo('body');				
			});	
	}