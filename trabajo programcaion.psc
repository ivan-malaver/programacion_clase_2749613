Algoritmo sin_titulo
	
	//definir valores
	definir sel, rad, alt, latd, lati, bas, res como real;
	
	//definir operacion
	Escribir 'Elija la figura a calcuar';
	Escribir '1. Cono';
	Escribir '2. Piramide';
	Escribir '3. Cilindro';
	Leer sel;
	
	//definir ecuacion
	Si sel es 1 Entonces
		Escribir 'Escriba radio del cono';
		Leer rad;
		Escribir 'Escriba la altura del cono';
		Leer alt;
		res = (3.14159 * (rad * rad) * alt) / 3;
		Escribir 'El volumen del cono es igual a ', (res);
	FinSi
	Si sel es 2 entonces
		escribir  'Escriba el lateral derecho de la base de la piramide';
		leer latd;
		escribir  'Escriba el lateral izquierdo de la base de la piramide';
		leer lati;
		bas = latd * lati;
		Escribir ' La base es igual a ', (bas);
		Escribir 'Escriba la altura de la piramide';
		Leer alt;
		res = (bas * alt) / 3;
		Escribir 'el volumen de la piramide es igual a ', (res);
	FinSi
	si sel es 3 entonces 
		escribir 'Escriba  el valor de la altura" ;
		leer alt ;
		Escribir'escribir el valor de el radio" ;
		leer rad ;
		res = (3.14159 * (rad * rad) * alt);
		Escribir 'El valor de la base es igual a ", (res) ;
		
	FinSi
	
FinAlgoritmo
