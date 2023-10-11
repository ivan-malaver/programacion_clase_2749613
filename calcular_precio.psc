Proceso calcular_precio
	Definir  opcion Como Entero;
	
	Escribir 'selecione articulo que dese comprar :';
	Escribir '1: camisa promo valor $100.000:';
	Escribir '2: pantalon promo valor $150.000:';
	Escribir '3: zapatos promo valor $350.000:';
	Leer opcion;
	Segun opcion Hacer
		1:
			Definir costo, total, descuento, iva Como Entero;
			costo = 100000;
			descuento = ((costo * 20)/100) -costo;
			iva = ((descuento * 15)/100);
			total= descuento + iva;
			Escribir "el valor a cancelar del articulo es : ";
			Escribir total;
		2:
			Definir costo, total, descuento, iva Como Entero;
			costo = 150000;
			descuento = ((costo * 20)/100) -costo;
			iva = ((descuento * 15)/100);
			total= descuento + iva;
			Escribir "el valor a cancelar del articulo es : ";
			Escribir total;
		3:
			Definir costo, total, descuento, iva Como Entero;
			costo = 350000;
			descuento = ((costo * 20)/100) -costo;
			iva = ((descuento * 15)/100);
			total= descuento + iva;
			Escribir "el valor a cancelar del articulo es : ";
			Escribir total;
		De Otro Modo:
			Escribir "opcion ivalidad";
	FinSegun
FinProceso
