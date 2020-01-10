// Delimiters may be slash, dot, or hyphen
	$date = "2/2020";
	$month = explode('/', $date);
	echo "Month: $month[0]<br />\n";
	$h = (int)$month[0] + (int)$month[1];

	$dateNow = date("m/Y");

	echo "\n ".$dateNow;
	$dateNow = explode('/', $dateNow);
	$n = (int)$dateNow[0] + (int)$dateNow[1];
	if($h > $n){
		echo "\nsuccsess.........";
	}
