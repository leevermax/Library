/* Set Time Show Hide Message At Start Page:*/
setTimeout(function(){
  $(".messageTimingToVisit").slideDown("slow");
  setTimeout(function(){
    $(".messageTimingToVisit").slideUp("slow");
  }, 5000);
}, 5000);
