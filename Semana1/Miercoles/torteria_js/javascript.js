$( document ).ready(function() {



// Class Torta
  class Torta {
  }

  // Class TortaBatch
  class TortaBatch {
  }

  // Class Oven
  class Oven {
  }

  var type;
  var time;
  var temp;
  var counter = 0;

  function set_status(){
      if (type == "milanesa") {  
         if (counter == 0) {
            $('.clear').html("crudo");
         } else if (counter == 8) {
            $('.clear').html("casi listo");
         } else if (counter == 10){
            $('.clear').html("listo");
         } else if (counter == 11){
            $('.clear').html("quemado");
         } 
      } else if (type == "jamon"){
         if (counter == 0) {
            $('.clear').html("crudo");
         } else if (counter == 6) {
            $('.clear').html("casi listo");
         } else if (counter == 8){
            $('.clear').html("listo");
         } else if (counter == 9){
            $('.clear').html("quemado");
         } 
      } else if (type == "queso"){
         if (counter == 0) {
            $('.clear').html("crudo");
         } else if (counter == 2) {
            $('.clear').html("casi listo");
         } else if (counter == 3){
            $('.clear').html("listo");
         } else if (counter == 4){
            $('.clear').html("quemado");
         } 
      }
   console.log(counter);
   counter ++;

  }

  function set_background(){
      if ($('.clear').html() == "crudo"){
         $('#timer').removeClass();
         $('#timer').addClass("Crudo");
      } else if ($('.clear').html() == "casi listo"){
         $('#timer').removeClass();
         $('#timer').addClass("Casi-listo");
      } else if ($('.clear').html() == "listo"){
         $('#timer').removeClass();
         $('#timer').addClass("LISTO");
      } else if ($('.clear').html() == "quemado"){
         $('#timer').removeClass();
         $('#timer').addClass("QUEMADO");
      }
  }

  function countdown() {
    if (time == -1) {
      return;
    }
    temp = document.getElementById('timer');
    temp.innerHTML = time;
    set_status();
    set_background(); 
    time--;
    timeout = setTimeout(countdown, 1000);
  } 

  //onClick()
  $('form.create-oven').submit(function(e){
    e.preventDefault();
    $('.oven').css('visibility', 'visible');
    $('form.create-oven').hide();
    $('.oven').append('<form id="cook"><input type="text" id="type" placeholder="Tipo de torta"><input type="text" id="time" placeholder="Tiempo"><input type="submit" value="Cocinar"></form>')
    
      $('form#cook').submit(function(e){
        e.preventDefault();
        counter = 0;
        type = $('input#type').val();
        time = $('input#time').val();
        countdown();
      });


  });


});