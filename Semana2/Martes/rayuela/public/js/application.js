$(document).ready(function() {
	// Tu código va aquí

  $("#start_btn").click(function(){
      march();
  });

  count = 1;
  function march(){
    $("#Player1").find(".active").next().addClass("active");
    $("#Player2").find(".active").next().addClass("active");
    $("#Player1").find(".active").first().removeClass("active")
    $("#Player2").find(".active").first().removeClass("active")
    if (count === 199){
      return console.log("se termino");
    }
    count = count + 1;
    setTimeout(march, 1);
  }

  function reset_bar(){
    $("#Player1").find("#player1").first().addClass("active");
    $("#Player2").find("#player2").first().addClass("active");
  }

});

