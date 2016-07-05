$( document ).ready(function() {



// Class Torta
  class Torta {
    constructor() {

    }
  }

  // Class TortaBatch
  class TortaBatch {
    constructor() {

    }
  }

  // Class Oven
  class Oven {
    constructor() {

    }
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
        hornear(time);
      });


  });



  function hornear(time){
    startTimer(time);
  }

  var timeInSecs;
  var ticker;

  function startTimer(secs){
    timeInSecs = parseInt(secs)-1;
    ticker = setInterval("tick()",1000);   // every second
  }

  function tick() {
    var secs = timeInSecs;
    if (secs>0) {
    timeInSecs--;
  }
    else {
      clearInterval(ticker); // stop counting at zero
      // startTimer(60);  // remove forward slashes in front of startTimer to repeat if required
  }
    $("#timer").innerHTML = secs;
  }



});