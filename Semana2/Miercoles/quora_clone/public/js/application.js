$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 

  $("form.login").hide();
  $("form.signin").hide();

  $("#login").click(function(){
    if ( $("form.login").is(":visible") ) {
      $("form.login").hide();
      $("#signin").show();
      $("#login").text("Log in");
    } else {
       $("form.login").show();
       $("#signin").hide();
       $("#login").text("Back");
    }
  });

  $("#signin").click(function(){
    if ( $("form.signin").is(":visible") ) {
      $("form.signin").hide();
      $("#login").show();
      $("#signin").text("Sign in");
    } else {
       $("form.signin").show();
       $("#login").hide();
       $("#signin").text("Back");
    }
  });

});
