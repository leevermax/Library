// get content value of ::aftert tag of element....
window.getComputedStyle(document.getElementById('myH1'), '::after').getPropertyValue('content');
//elememt by class
window.getComputedStyle(document.getElementsByClassName('khigio')[0], '::after').getPropertyValue('content')
