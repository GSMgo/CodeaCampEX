$(document).ready(function() {

  $(function(){
    $('form').on('submit',function(event){
        event.preventDefault() ;
        alert("Form Submission stoped.");
    });
  });
  
});
