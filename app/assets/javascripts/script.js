$(document).ready(function() {
    $('.search').on('keyup', function() {
        var value = $(this).val();
       $.ajax({
            url: "home/search_city/"+value,
            method: 'GET',
            dataType: "json"
        })
        .then(function(data){
            console.log(data);
        $('datalist').html('')
        for(var i=0; i<data.length; i++)
            $('datalist').append('<option class="city">'+data[i].v+'</option>')
        });
	});
});