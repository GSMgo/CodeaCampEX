$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  var survey_data = {}

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

  count = 1;
  $("#continue").click(function(e){
    e.preventDefault();
    $("#question_field").hide();
    pregunta = $('#pregunta')[0].value;
    survey_data[pregunta] = "";
    $div = '<div><h4>Pregunta'+count+': '+pregunta+'  </h4><br><ul id="ans_list"></ul><form id="place_answer"><input id="option_form" type="text" name="answer'+count+'" placeholder="Option"><input type="submit" value="Add Option"></form><br><button id="question_completed">Question completed</button></div>';
    $("div#question_field").before($div);
    count = count + 1;

        $("form#place_answer").submit(function(e){
          e.preventDefault();
          console.log(respuesta = $('#option_form').last()[0].value);
          survey_data[pregunta] << respuesta;
          $ans = '<li>'+respuesta+'</li>';
          $("ul").last().append($ans);

          $("#question_completed").click(function(e){
            e.preventDefault();
            $("#question_field").show();
            $("#place_answer").hide();
            $("#question_completed").hide();

          });


        });

        

  });

 


});
