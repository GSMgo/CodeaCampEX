$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  survey_questions = {} 
  var survey_answers = {} 

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

  count = 0;
  $("#continue").click(function(e){
    e.preventDefault();
    count = count + 1;

    console.log("CONTINUE CLICKED");
    console.log(count);
    $("#question_field").hide();
    pregunta = $('#pregunta')[0].value;
    survey_questions[count] = pregunta;
    console.log(survey_questions);
    survey_answers[count] = [];
    $div = '<div><h4>Pregunta'+count+': '+pregunta+'  </h4><br><ul id="ans_list"></ul><form id="place_answer'+count+'"><input id="option_form'+count+'" type="text" name="answer'+count+'" placeholder="Option"><input type="submit" value="Add Option"></form><br><button id="question_completed'+count+'">Question completed</button></div>';
    $("div#question_field").before($div);

        $("form#place_answer"+count).submit(function(e){
          e.preventDefault();
          console.log(respuesta = $("#option_form"+count).last()[0].value);
          survey_answers[count].push(respuesta)
          console.log(survey_answers);
          $ans = '<li>'+respuesta+'</li>';
          $("ul").last().append($ans);

          $("#question_completed"+count).click(function(e){
            e.preventDefault();
            $("#question_field").show();
            $("#place_answer"+count).hide();
            $("#question_completed"+count).hide();

          });


        });

        

  });

 


});
