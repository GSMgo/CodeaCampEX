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
    counter ++;
    //swtich de milanesa 
    switch (counter){
      case 
    }
     //swtich de jamon
    switch (counter){
      case 
    }
     //swtich de queso
    switch (counter){
      case 
    }

    console.log(counter);
  }

  function countdown() {
    if (time == -1) {
      return;
    }
    temp = document.getElementById('timer');
    temp.innerHTML = time;
    set_status(); 
    time--;
    timeout = setTimeout(countdown, 1000);
  } 

  $('form.create-oven').submit(function(e){
    e.preventDefault();
    $('.oven').css('visibility', 'visible');
    $('form.create-oven').hide();
    $('.oven').append('<form id="cook"><input type="text" id="type" placeholder="Tipo de torta"><input type="text" id="time" placeholder="Tiempo"><input type="submit" value="Cocinar"></form>')
    
      $('form#cook').submit(function(e){
        e.preventDefault();
        type = $('input#type').val();
        time = $('input#time').val();
        $('#timer').append('<div id="status"></div>')
        status = $('#timer').html();
        countdown();
      });


  });





});