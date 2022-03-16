Algoritmo ciclo_mientras
	Definir esDivPor3 Como Logico
	Definir intento,num Como Entero
	esDivPor3=Falso
	intento=0
	Mientras ~esDivPor3 hacer
		intento=intento+1
		num=azar(31)
		esDivPor3=(num mod 3=0)
	FinMientras
	Mostrar num " es divisible por 3" Sin Saltar
	Mostrar " y fue generado el " intento " intento"
FinAlgoritmo
