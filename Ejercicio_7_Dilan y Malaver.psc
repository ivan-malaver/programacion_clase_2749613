Algoritmo Ejercicio_7
	Definir salario Como Real;
	Definir x Como Entero;
	salario=1500;
	Escribir "El salario en el a�o 1 es 1500";
	para x = 2 Hasta 6 Con Paso 1 Hacer
		salario=salario+(salario* 0.10);
		Escribir "El salario en el a�o "," ", x ," es :$",salario;
		
	FinPara
	Escribir "el salario en 6 a�os es: $", salario; 
	
	
FinAlgoritmo
