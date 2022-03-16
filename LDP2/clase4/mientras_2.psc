Algoritmo mientras_2
	Definir esDivPor3 Como Logico
	Definir intento,num Como Entero
	
	esDivPor3=falso
	intento=0
	Mientras (~esDivPor3 y intento<=5) hacer
		intento=intento+1
		num=azar(31)
		esDivPor3=(num mod 3=0)
	FinMientras
	
	si esDivPor3
		Mostrar num " es divisible por 3" Sin Saltar
		Mostrar " y fue generado el " intento " intento"
	sino
		Mostrar "Dspues de 5 intentos " Sin Saltar
		Mostrar "no se genero un numero divisible por 3"
	FinSi
FinAlgoritmo
