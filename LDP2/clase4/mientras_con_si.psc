Algoritmo mientras_con_si
	Definir esDivPor3 Como Logico
	Definir intento,num Como Entero
	intento=1
	num=azar(31)//generacion del primer numero
	esDivPor3=(num mod 3=0)
	Mostrar "Es " esDivPor3 " que " num " es divisible por 3"
	Mientras ~esDivPor3 hacer
		intento=intento+1
		num=azar(31)//generacion de nums, suesivos
		esDivPor3=(num mod 3=0)
	FinMientras
	si intento>1
		Mostrar num " es divisible por 3" Sin Saltar
		Mostrar " y fue generado el " intento " intento"
	sino
		Mostrar "No se entró al ciclo"
	FinSi
FinAlgoritmo
