/* Set Time Show Hide Message At Start Page:*/
setTimeout(function(){
  $(".messageTimingToVisit").slideDown("slow");
  setTimeout(function(){
    $(".messageTimingToVisit").slideUp("slow");
  }, 5000);
}, 5000);

/* Event press key in game*/
window.addEventListener( "keydown", 
    function(e) {

        if( e.keyCode === 32 ){
            switch(state.current){
                case state.getReady:
                    state.current = state.game;
                    SWOOSHING.play();
                    break;
                case state.game:
                    if(bird.y - bird.radius <= 0) return;
                    bird.flap();
                    FLAP.play();
                    break;
                case state.over:
                    let rect = cvs.getBoundingClientRect();
                    
                    // CHECK IF WE CLICK ON THE START BUTTON
                   
                    pipes.reset();
                    bird.speedReset();
                    score.reset();
                    state.current = state.getReady;
                    
                    break;
            }
        }

});
/*in Diem*/
 reset : function(){
        
      var para = document.createElement("h3");                       // Create a <p> node
      var t = document.createTextNode("Hight Core: "+this.value);  
      para.appendChild(t);
      document.getElementById("coreTable").prepend (para);

      this.value = 0;
  }
