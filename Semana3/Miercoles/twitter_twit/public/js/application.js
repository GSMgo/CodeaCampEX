$(document).ready(function() {

  $('form#search').submit(function(e){
    e.preventDefault();
    form = $('form#search').serialize();
    $.ajax({
      url:'/fetch',
      data: form,
      type:'POST',
      beforeSend: function() {
        $("#tweets").html("<img src='ajax-loader.gif'/>");
      },
      success:function(data){ 
        $("#tweets").html(data);
      }
    });
  });

  $('form#create_tweet').submit(function(e){
    e.preventDefault();
    form_create_tweet = $('form#create_tweet').serialize();
    $.ajax({
        url:'/post_tweet',
        data: form_create_tweet,
        type:'POST',
        beforeSend: function() {
          $("#tweets").html("<img src='ajax-loader.gif'/>");
        },
        success:function(data){ 
          $.ajax({
            url:'/fetch',
            data: form_create_tweet,
            type:'POST',
            beforeSend: function() {
              $("#tweets").html("<img src='ajax-loader.gif'/>");
            },
            success:function(data){ 
              alert("Tweet posted!");
              $("#tweets").html(data);
            }
          });
        }
    });
  });

});



