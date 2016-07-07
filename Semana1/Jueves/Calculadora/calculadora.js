$( document ).ready(function() {

  fill_pile();

  $("div#cardSlots").droppable({
      drop: function(event, ui) {
         var count = $('#cardSlots > *').length;
         if(count < 10){
            // do something with the dock
            $(this).effect("shake");
            // do something with the draggable item
            a = $(ui.draggable).clone();
            // $('#cardSlots').append($(ui.draggable));
            $('#cardSlots').append(a);
            num = $(ui.draggable).html();
            update_sum(num);
         }
      }
   });
}); // end of document ready

var pile = [];

function fill_pile(){
    for (i = 0; i < 10; i++) { 
      pile.push(new Number(i));
      $('#cardPile').append('<div>'+i+'</div>');
    }
  }

function Number(num){
  this.num = num;
}

$(function() {
    $( "#cardPile div" ).draggable({
        helper: "clone"
    }); 
});

function update_sum(num){
  actual_total = $('#total_sum').html();
  console.log("num: " + num + "  actual_total:" + actual_total )
  sum = parseInt(actual_total, 10) + parseInt(num, 10);
  console.log(sum)  
  $('#total_sum').html(sum);
} 



