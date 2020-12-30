// Like click js
var list = document.getElementsByClassName('c3-material-button-button');
for(var i = 0; i < list.length; i++){
    if(list[i].getAttribute('aria-label').split(' ',1) == 'like'){
        list[i].click();
        console.log(i);
    }
}
// subscribe click js
var list = document.getElementsByClassName('button-renderer-text');
for(var i = 0; i < list.length; i++){
    if(list[i].innerHTML.split(' ',1) == 'Subscribe'){
        list[i].click();
        console.log(i);
    }
}
// check id exit js
var list = document.getElementsByClassName('yt-copy-link-renderer')[1].value;
