$( document ).ready(function() {


 
  function openNav() {
    $("#mySidenav").css("width","250px");
    $(".content").css("margin-left", "250px");
  }

  function closeNav() {
    $("#mySidenav").css("width", "0px");
    $(".content").css("margin-left", "0px");
}

  $('#open').click(function(){
    console.log('click');
    openNav();  
  });

  $('#close').click(function(){
    closeNav();
  });







});
