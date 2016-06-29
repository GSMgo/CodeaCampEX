$(document).ready(function() {

  $('form#search').submit(function(e){
    e.preventDefault();
    form = $('form#search').serialize();
    $.ajax({
      url:'/fetch',
      data: form,
      type:'POST',
      beforeSend: function() {
        $(".tweets").html("<img src='ajax-loader.gif'/>");
      },
      success:function(data){ 
        $(".tweets").html(data);
      }
    });

  });


});



