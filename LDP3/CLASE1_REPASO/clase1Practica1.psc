SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo
SubAlgoritmo MostrarInformacionUnaVariable(mensaje, dato Por Referencia)
	Mostrar mensaje " " dato
FinSubAlgoritmo
SubAlgoritmo calcularPromedio(n1,n2,n3,prom Por Referencia)
	prom=(n1+n2+n3)/3
FinSubAlgoritmo
SubAlgoritmo despedirGeneral()
	Mostrar "Adios¡¡¡"
FinSubAlgoritmo
Algoritmo clase1Practica1
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	//saludarPersonalizado(name)
	pedirInformacion("Ingrese el nombre: ", nombre) 
	pedirInformacion("Ingrese la nota 1: ", nota1)
	pedirInformacion("Ingrese la nota 2: ", nota2) 
	pedirInformacion("Ingrese la nota 3: ", nota3)
	calcularPromedio(nota1,nota2,nota3,promedio)
	MostrarInformacionUnaVariable("El alumno", nombre)
	MostrarInformacionUnaVariable("Obtuvo una nota promedio de ", promedio)
	despedirGeneral()
FinAlgoritmo
