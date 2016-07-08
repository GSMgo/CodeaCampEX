var Board = function( selector ) {
   // Aqui deberá ir el código que tenga que ver con tu tablero 

   // Utiliza esta sintaxis para referirte al selector que representa al tablero.
   // De esta manera no dependerás tanto de tu HTML.  
   $elem = $( selector );

   function initialize() {
    // Que debe de pasar cuando se crea un nuevo tablero?
   };

   initialize();
};


var $elem;
var init_postIt = $('.post-it');
var zindex = 1;

$(function() {
   // Esta es la fucnión que correrá cuando este listo el DOM 
   new Board('#board');
});

var PostIt = function(x,y) {
   this.x = x;
   this.y = y;
   var clone_postIt = init_postIt.clone();
   console.log(clone_postIt);
   this.element = clone_postIt;
   $(this.element).removeAttr( 'style' );
   $(this.element).css({top: y, left: x});
   $elem.append($(this.element));

   $( ".post-it" ).draggable({cancel: ".content",
      stop: function() {
         $(this).css('zIndex', zindex);
         zindex = zindex +1 ;
         var position = $(this).position();
         this.x = position.left;
         this.y = position.top;
      }
   });

};

   $('div.close').click(function(){
      console.log("close");
      $(this).parents('div').remove();
   });


$(function() {
   $( ".post-it" ).draggable({cancel: ".content",
      stop: function() {
        $(this).css('zIndex', zindex);
        zindex = zindex +1 ;
      }
   });
});

$( "#board" ).dblclick(function(e) {
   x = e.pageX;
   y = e.pageY;
   var elem = document.elementFromPoint(x, y); 
   if('#'+elem.id+'' == $elem.selector){
      new PostIt(x,y);// $( "#board" ).append('<div id="master" class="post-it"><div class="header"><div class="close">X</div></div><div class="content">...</div></div>');
   }
});



