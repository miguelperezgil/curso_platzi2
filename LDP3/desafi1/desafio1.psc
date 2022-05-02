SubAlgoritmo saludarGeneral(mensaje)
	Mostrar mensaje
	Esperar 3 Segundos
	Limpiar Pantalla
FinSubAlgoritmo
SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo
SubAlgoritmo calcualrPromedio(ven1,ven2,ven3,ven4, prom Por Referencia)
	prom=(ven1+ven2+ven3+ven4)/4
FinSubAlgoritmo
SubAlgoritmo calcularGanancia(prom, ganan Por Referencia)
	ganan=prom*0.3
FinSubAlgoritmo
SubAlgoritmo MostrarInformacionUnaVariable(mensaje, dato Por Referencia)
	Mostrar mensaje " " dato
FinSubAlgoritmo
Algoritmo sucursales
	Definir ventas1, ventas2, ventas3, ventas4, promedio, ganancia, porcentaje  Como Real
	saludarGeneral("Bienvenido, a continuacion se le solicitaran algunos datos")
	pedirInformacion("Ingrese el total de ventas de la primera sucursal: ", ventas1)
	pedirInformacion("Ingrese el total de ventas de la segunda sucursal: ", ventas2)
	pedirInformacion("Ingrese el total de ventas de la tercera sucursal: ", ventas3)
	pedirInformacion("Ingrese el total de ventas de la cuarta sucursal: ", ventas4)
	calcualrPromedio(ventas1,ventas2, ventas3, ventas4, promedio)
	calcularGanancia(promedio,ganancia)
	MostrarInformacionUnaVariable("El promedio de ventas entre las cuatro sucursales es: ", promedio)
	MostrarInformacionUnaVariable("La ganancia, que es el 30% del valor promedio, es: ", ganancia)
	
FinAlgoritmo
