$( document ).ready(function() {

  fill_pile();

  $("div#cardSlots").droppable({
      drop: function(event, ui) {
         var count = $('#cardSlots > *').length;
         if(count < 10){
            // do something with the dock
            // $(this).effect("shake");
            // do something with the draggable item
            a = $(ui.draggable).clone();
            // $('#cardSlots').append($(ui.draggable));
            $('#cardSlots').append(a);
            cardSlots.cards.push(new Card(i, '<div>'+parseInt(a.html(), 10)+'</div>'));
            num = $(ui.draggable).html();
            update_sum(num);
         }
      }
   });
}); // end of document ready

var cardPile = new CardPile();
var cardSlots = new CardSlotsContainer();
var sumDisplay = new SumDisplay();

function Card(num, element){
  this.num = num;
  this.element = element;
}

function CardPile(){
   this.cards = [];
}

function CardSlotsContainer(){
   this.cards = [];
}

function SumDisplay(){
   this.sum = 0
}

$(function() {
    $( "#cardPile div" ).draggable({
        helper: "clone"
    }); 
});

function fill_pile(){
   for (i = 0; i < 10; i++) { 
      cardPile.cards.push(new Card(i, '<div>'+i+'</div>'));
      $('#cardPile').append(cardPile.cards[i].element);
   }
}

function update_sum(num){
   sumDisplay.sum = sumDisplay.sum + parseInt(num,10);
  $('#total_sum').html(sumDisplay.sum);
} 



