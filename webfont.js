
var params = 'isDelete='+isDelete+'&id='+id;
xmlSendId(params);

// send data with xml request
function xmlSendId(params){
  var xhttp = new XMLHttpRequest();

    xhttp.open("POST", "postIdDelete.do", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(params);		
}
