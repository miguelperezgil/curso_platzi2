Funcion dobleDelNum <- calcularDoble(num) 
	dobleDelNum=num*2
FinFuncion
Algoritmo sin_titulo
	Definir nro,doble Como Real
	Mostrar "Ingrese el numero"
	leer nro
	Mostrar "El doble del numero " nro " es_: " calcularDoble(nro)
	doble= calcularDoble(nro)
	si calcularDoble(nro)>nro
		Mostrar doble " es el doble de " nro
		
	FinSi
FinAlgoritmo
