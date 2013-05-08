if('https:' != document.location.protocol){
	var cvancl = document.createElement('script');     
	cvancl.type = 'text/javascript'; 
	cvancl.async = true;
	cvancl.src = 'js/websource.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(cvancl, s);
}

