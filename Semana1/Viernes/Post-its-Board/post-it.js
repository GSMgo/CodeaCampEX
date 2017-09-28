var Board = function() {
   this.element = document.createElement("div");   
   $(this.element).addClass('board')
   $(this.element).attr('id', board_counter);
   this.board_pi = [];  
   this.board_number = board_counter
   board_counter++;
   this.name = undefined;
};

var PostIt = function(x,y) {
   this.x = x;
   this.y = y;
   this.element = document.createElement("div");
   $(this.element).addClass('post-it');
   $(this.element).attr('id', 'master')
   $(this.element).append('<div class="header"><div class="close">X</div></div><div contenteditable="true" class="content">...</div>');
   // this.element = init_postIt.clone();
};

var board_counter = 1;
var boards = [];
var init_postIt = $('.post-it');
var zindex = 1;
var active_board = undefined;


// $(function() {
//    // Esta es la fucnión que correrá cuando este listo el DOM 
//    new Board();
// });

function create_board(){
   var board_name = prompt("Please enter a name for the board");
   var new_board = new Board();
   new_board.name = board_name;
   $('#sidebar').append('<span class="board_name" id='+new_board.board_number+'>'+new_board.name+'</span>');
   console.log("New board created");
   boards.push(new_board);
   $('body').append(new_board.element);
   change_active_board(new_board.board_number);
   active_board = new_board.board_number;

   //funcion para crear un nuevo post it al hacer doble click (checa si se hace click en el board)
   $( ".board" ).dblclick(function(e) {
      board = boards.filter(function(a){ return a.board_number == active_board})[0];
      console.log("CLick en board");
      x = e.pageX;
      y = e.pageY;
      var elemc = document.elementFromPoint(x, y); 
      if(elemc.id == board.element.id){
         create_post_it(x,y);
      }
   });

   //funcion al dar click en el nombre de otro tablero
   $('.board_name').click(function(){
      id = $(this).attr('id');
      console.log("BOARD ID CLICKED:  " + id);
      change_active_board(id);
   });
}

function create_post_it(x,y){
   x = x - 288;
   console.log("Create post it");
   board = boards.filter(function(a){ return a.board_number == active_board})[0];
   var new_pi = new PostIt(x,y,init_postIt.clone());
   board.board_pi.push(new_pi);
   console.log(new_pi);

   $(new_pi.element).removeAttr( 'style' );
   $(new_pi.element).css({top: y, left: x});
   $(board.element).append($(new_pi.element));

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


//click para crear un nuevo board
$('#new_board').click(function(){
   create_board();
});

//funcion para cambiar el tablero activo
function change_active_board(id){
   $.each(boards, function(i, l){
      $(l.element).hide();
      if(l.board_number == id){
         $(l.element).show();
         active_board = id;
      }
   });
}











