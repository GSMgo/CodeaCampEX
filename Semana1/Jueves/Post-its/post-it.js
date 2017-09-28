var Board = function( selector ) {
   // Aqui deberá ir el código que tenga que ver con tu tablero 

   // Utiliza esta sintaxis para referirte al selector que representa al tablero.
   // De esta manera no dependerás tanto de tu HTML.  
   $elem = $( selector );
   $board_pi = [];

   function initialize() {
    // Que debe de pasar cuando se crea un nuevo tablero?
    $('.post-it').remove();
    create_post_it(0,0);

   };

   initialize();
};

var PostIt = function(x,y) {
   this.x = x;
   this.y = y;
   this.element = init_postIt.clone();
};

var $elem;
var init_postIt = $('.post-it');
var zindex = 1;


$(function() {
   // Esta es la fucnión que correrá cuando este listo el DOM 
   new Board('#board');
});

function create_post_it(x,y){
   var new_pi = new PostIt(x,y,init_postIt.clone());
   $board_pi.push(new_pi);
   new_pi.element.removeAttr( 'style' );
   new_pi.element.css({top: y, left: x});
   $elem.append(new_pi.element);

   //funcion para arrastrar el postit
   $(function() {
      $( ".post-it" ).draggable({cancel: ".content",
         start: function() {
            $(this).css('zIndex', zindex);
            zindex = zindex +1 ;
            var position = $(this).position();
            this.x = position.left;
            this.y = position.top;
         }
      });
   });

   //funcion para cerrar el post it
   $('div.close').click(function(){
      console.log("close");
      $(this).parent('div').parent('div').remove();
   });
}

//funcion para crear un nuevo post it al hacer doble click (checa si se hace click en el board)
$( "#board" ).dblclick(function(e) {
   x = e.pageX;
   y = e.pageY;
   var elem = document.elementFromPoint(x, y); 
   if('#'+elem.id+'' == $elem.selector){
      create_post_it(x,y);
   }
});










