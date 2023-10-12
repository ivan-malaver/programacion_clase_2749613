Algoritmo Ejercicio_5
	Definir costo Como Real;
	Leer costo;
	Si costo>=200 Entonces
		costo=costo - (costo*0.15);
	sino 
		si costo >= 100 Entonces
			costo=costo - (costo*0.12);
			
		sino 
			costo=costo - (costo*0.10);
		FinSi
	FinSi
	Escribir "el costo a pagar con su respectivo descuento es";
	Escribir costo;
FinAlgoritmo
