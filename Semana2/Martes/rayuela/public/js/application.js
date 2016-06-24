$(document).ready(function() {
	// Tu código va aquí

  $("#start_btn").click(function(){
      reset_bar();
      run().done(winner());
      winner();
  });

  $(document).keydown(function(event) {
      if (event.which == 65){
          stop_var1 = false;
          console.log("a presionada");
      } else if (event.which == 76){
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
      return;
    }
    if (count1 == 199){
      return;
    }
    count1 = count1 + 1;
    setTimeout(march1, 7);
  }

  function march2(){
    $("#Player2").find(".active").next().addClass("active");
    $("#Player2").find(".active").first().removeClass("active");
   
    if (stop_var2 == false) {
      return;
    }
    if (count2 == 199){
      return;
    }
    count2 = count2 + 1;
    setTimeout(march2, 7);
  }
  
  function reset_bar(){
    count1 = 1;
    count2 = 1;
    stop_var1= true;
    stop_var2= true;
    $("#Player1").find(".active").first().removeClass("active")
    $("#Player2").find(".active").first().removeClass("active")
    $("#Player1").find("#player1").first().addClass("active");
    $("#Player2").find("#player2").first().addClass("active");
  }

  function run(){
    var r = $.Deferred();
    march1();
    march2();
  }

  function winner(){
    a = $("#Player1").find(".active").attr("value");
    b = $("#Player2").find(".active").attr("value");
    console.log(a,b);
    setTimeout(winner, 1800);
  }
  

});



  