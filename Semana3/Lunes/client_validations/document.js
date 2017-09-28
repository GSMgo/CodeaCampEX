$( document ).ready(function() {

  $("form").submit(function(e){
    e.preventDefault();
    $('li').remove();
    validate();
  });

  function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    if (!re.test(email)) {
      $("#result").append("<li>" +email+ " no es un email valido </li>");
    }
  }

  function validatePassword(password){
    var one_num = /.*\d/
    var one_upper = /.*[A-Z]/
    var pass_size = /[a-zA-Z0-9]{8,}$/
    if (!one_num.test(password)){
      $("#result").append("<li>El password debe tener al menos un numero</li>");
      console.log("one_num");
    }  
    if (!one_upper.test(password)){
      $("#result").append("<li>El password debe tener al menos una mayuscula</li>");
      console.log("one_upper");
    }
    if (!pass_size.test(password)){
      $("#result").append("<li>El password debe tener al menos 8 caracteres</li>");
      console.log("pass_size");
    } 
    if ((one_num.test(password)) & (one_upper.test(password)) & (pass_size.test(password))){
      window.alert("Good! Pass and email valid");
    } 
  }

  function validate() {
    var email = $("#email").val();
    var pass = $("#password").val();
    console.log("Email = " + email + "  password = " + pass);  
    validateEmail(email);
    validatePassword(pass);
  }



});