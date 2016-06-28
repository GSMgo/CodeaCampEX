$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 

  $("form").submit(function(event){ 
    console.log("Entre a boton");
    event.preventDefault();

    var str = $( "form" ).serialize();
    console.log(str);

    $.post("/abuelita", str, function(data) {
      console.log(data);
      $("# ").html("<h1>Tu abuelita dice: " + data + "</h1>");
    });

  });

});
