$( document ).ready(function() {



  $('form').submit(function(e){
    e.preventDefault();

    selector = $('input#selector').val();
    property = $('input#property').val();
    value = $('input#value').val();

    $(selector).css(property, value);

    $('input#selector').val("");
    $('input#property').val("");
    $('input#value').val("");


  });



  // $(function(){
  // });
});