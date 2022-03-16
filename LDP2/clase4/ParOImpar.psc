Algoritmo ParOImpar
	//Definiciones
	Definir nro Como Entero
	Mostrar "Introduzca un numero (1-10)" Sin Saltar
	Leer nro
	//Procesos
	Si nro>=1 y nro<=10 Entonces
		Segun nro Hacer
			1,3,5,7,9:
				Mostrar "El numero " nro " es impar"
			2,4,6,8,10:
				Mostrar "El numero " nro " es par"
		Fin Segun
	SiNo
		Mostrar "Numero ingresado debe estar entre 1 y 10"
	Fin Si
FinAlgoritmo
