Proceso precio_parqueadero
	Definir total, minutos, precio Como Entero;
	Escribir 'ingrese los minutos transcurridos de parqueadero';
	Leer minutos;
	Si minutos<=120 Entonces
		total= ((minutos *3000))/120;
		Escribir total;
	SiNo
		Si minutos>120 y minutos <=300 Entonces
			total= (((minutos - 120) * 9000)/180) +(3000) ;
			Escribir total;
		
	SiNo
		Si minutos>300 y minutos <=600 Entonces
			total= ((minutos - 300) * 60) +(3000) +(9000);
			Escribir total;
		
	SiNo
		Si minutos>600 Entonces
			total= ((minutos - 600) * 92) +(3000) +(9000) +(18000);
			Escribir total;
		FinSi
	FinSi
	FinSi
	FinSi
FinProceso
