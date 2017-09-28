contador = 0
$('#previous_frame').click(function(){
  carousel(-1);
});

$('#next_frame').click(function(){
  carousel(1);
});

function carousel(dir){
  var c_container = $('.carousel');
  var c_ul = $('.frames');
  var items = $('.frames li');
  var items_count = items.length -1;
  var current_item = items[contador];

  if (dir == 1) {
    contador = contador + 1;
    if (!items[contador]){
      // $( '.active' ).toggle( "slide" );
      // $( 'li:first-child' ).toggle( "slide" );
      console.log("UNO");
      $('li:first-child').addClass("active");
      $('.active').last().removeClass("active");
      contador = 0;
    } else {
      console.log("DOS");
      // $( '.active' ).toggle( "slide" );
      // $( '.active' ).next().toggle( "slide" );
      $('.active').next().addClass("active");
      $('.active').first().removeClass("active");

    } 
  }

  if (dir == -1) {
    contador = contador - 1;
    if (contador < 0){
      // $( '.active' ).toggle( "slide" );
      // $( 'li:last-child' ).toggle( "slide" );
      console.log("TRES");
      $('li:last-child').addClass("active");
      $('.active').first().removeClass("active");
      contador = items_count;
    } else {
      $( "ul" ).animate({
        left: "620px",
      }, 1000, function() {
        console.log("CUATRO");
        $('.active').prev().addClass("active")
        $('.active').last().removeClass("active");
      });
      // $( '.active' ).toggle( "slide" );
      // $( 'active' ).prev().toggle( "slide" );

    }
  }

}