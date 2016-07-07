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

var $elem

var PostIt = function(x,y) {
   console.log("X  " + x + "  Y  " + y );
   // Aquí va el código relacionado con un post-it
   init_postIt = $('.post-it');
   clone_postIt = init_postIt.clone();
   clone_postIt.removeAttr( 'style' );
   clone_postIt.css({top: y, left: x});
   // clone_postIt.removeClass();
   // clone_postIt.addClass('post-it');
   $elem.append(clone_postIt);
};


$(function() {
   // Esta es la fucnión que correrá cuando este listo el DOM 
   new Board('#board');
});

$(function() {
   $( ".post-it" ).draggable({cancel: ".content"});
});


$( "#board" ).dblclick(function(e) {
   x = e.pageX;
   y = e.pageY;
   PostIt(x,y);// $( "#board" ).append('<div id="master" class="post-it"><div class="header"><div class="close">X</div></div><div class="content">...</div></div>');
});