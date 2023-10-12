Proceso Ejercicio_6
	Definir edad, sexo  Como Entero;
	Definir vacuna Como Caracter;
	Escribir 'Ingresa la edad';
	Leer edad;
	Si edad >=70 Entonces
		vacuna = 'C';
	SiNo
		Si edad <16 Entonces
			vacuna = 'A';
		SiNo
			Escribir 'Ingresa el sexo: 1 = mujer o 2 = hombre';
			Leer sexo;
			Si sexo==1 Entonces
				vacuna = 'B';
			SiNo
				Si sexo==2 Entonces
					vacuna = "A";
				SiNo
					Escribir 'Ingresa un sexo correcto';
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'Te corresponde la vacuna ', vacuna;
FinProceso
