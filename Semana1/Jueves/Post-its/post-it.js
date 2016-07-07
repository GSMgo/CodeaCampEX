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
init_postIt = $('.post-it');
var zindex = 1;

var PostIt = function(x,y) {
   clone_postIt = init_postIt.clone();
   clone_postIt.removeAttr( 'style' );
   clone_postIt.css({top: y, left: x});
   $elem.append(clone_postIt);
   $( ".post-it" ).draggable({cancel: ".content",
      start: function() {
        console.log("AAAA");
         $(this).css('zIndex', zindex);
        zindex = zindex +1 ;
      }
   });


   $('.close').click(function(){
      $(this).parents('div').remove();
   });
};


$(function() {
   // Esta es la fucnión que correrá cuando este listo el DOM 
   new Board('#board');
});

$(function() {
   $( ".post-it" ).draggable({cancel: ".content",
      stop: function() {
        console.log("AAAA");
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
      PostIt(x,y);// $( "#board" ).append('<div id="master" class="post-it"><div class="header"><div class="close">X</div></div><div class="content">...</div></div>');
   }

});

