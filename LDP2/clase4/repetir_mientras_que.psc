Algoritmo repetir_mientras_que
	Definir num, nums_proc Como Entero
	Definir respuesta Como Caracter
	nums_proc=0
	Repetir
		Escribir "Introduzac un numero: " Sin Saltar
		Leer num
		Mostrar "La mitad de " num " es: " num/2
		nums_proc=nums_proc+1
		Mostrar "Si no desea procesar mas numeros presione n o N"
		Leer respuesta
	Mientras Que  Mayusculas(respuesta)<>"N"//hasta que Mayusculas(respuesta)="N"
	Escribir "Se procesaron " nums_proc " numeros"
FinAlgoritmo
