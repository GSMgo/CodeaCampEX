$(document).ready(function() {
	// Tu código va aquí

  $("#start_btn").click(function(){
      reset_bar();
      run();
      console.log($("#Player1").find(".active").attr("value"));

  });

  a_pressed = false;
  l_pressed = false;

  $(document).keydown(function(event) {
      if (event.which == 65){
          // a_pressed = true;
          stop_var1 = false;
          console.log("a presionada");
      } else if (event.which == 76){
          // l_pressed = true;
          stop_var2 = false;
          console.log("l presionada");
      }
    }); 


  count1 = 1;
  count2 = 1;
  stop_var1= true;
  stop_var2= true;

  function march1(){
    $("#Player1").find(".active").next().addClass("active");
    $("#Player1").find(".active").first().removeClass("active");
   
    if (stop_var1 == false) {
      a_pressed = true;
      winner();
      return;
    }
    if (count1 == 199){
      a_pressed = true;
      winner();
      return;
    }
    count1 = count1 + 1;
    setTimeout(march1, 7);

  };

  function march2(){
    $("#Player2").find(".active").next().addClass("active");
    $("#Player2").find(".active").first().removeClass("active");
   
    if (stop_var2 == false) {
      l_pressed = true;
      return;
    }
    if (count2 == 199){
      l_pressed = true;
      return;
    }
    count2 = count2 + 1;
    setTimeout(march2, 7);
  };
  
  function reset_bar(){
    count1 = 1;
    count2 = 1;
    stop_var1= true;
    stop_var2= true;
    $("#Player1").find(".active").first().removeClass("active")
    $("#Player2").find(".active").first().removeClass("active")
    $("#Player1").find("#player1").first().addClass("active");
    $("#Player2").find("#player2").first().addClass("active");
  };

  function run(){
    march1();
    march2();
  };

  function winner(){
    $('td#player1').first().html
    p1 = $("#Player1").find(".active").attr("value");
    p2 = $("#Player2").find(".active").attr("value");

    // console.log(p1,p2);
    console.log("PRESIONADAS?? ", a_pressed, l_pressed);
    if ((p1 == 200 & p2 == 200) | (a_pressed & p2 == 200) | (p1 == 200 & l_pressed) | (a_pressed & l_pressed)){
      console.log("ESTOS SON LOS VLAORES" , p1,p2);
      if (Math.abs(175-p1) > Math.abs(175-p2)){
        ganador = $('strong')[1].innerText;
        $('table').after("<h3>The Winner is"+ganador+"  </h3>");
      } else if (Math.abs(175-p1) < Math.abs(175-p2)) {
        ganador = $('strong')[0].innerText;
        $('table').after("<h3>The Winner is"+ganador+"  </h3>");
      } else if (Math.abs(175-p1) == Math.abs(175-p2)){
        $('table').after("<h3>Esto es un empate! Ay Gueee!!!!</h3>");
      }

    };

  };

  
  

});



  