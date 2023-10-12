Algoritmo ejercio_8
	Definir costo, Total Como Real;
	Escribir 'precio de los articulos ';
	Leer costo;
	Si costo >=200 Entonces
		Total=(costo - (costo*0.15)); 
		escribir "Presio total";
		Escribir  total;
	SiNo  
		si costo > 100 Entonces
			costo=(costo - (costo*0.12));
		sino 
			costo=(costo - (costo*0.10));
			
			
		FinSi
		
	FinSi
	Escribir  "Su valor a pagar es ";
	Escribir  total;
FinAlgoritmo
 

