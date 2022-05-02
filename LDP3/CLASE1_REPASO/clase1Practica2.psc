SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo
SubAlgoritmo calcularComisionPorCantidad(cant,comCant Por Referencia)
	comCant=cant*300000
FinSubAlgoritmo
SubAlgoritmo calcularComisionVentas(ventas,comVentas Por Referencia)
	comVentas=ventas*18/100
FinSubAlgoritmo
SubAlgoritmo calcularSalario(sb,cc,cv,salario Por Referencia)
	salario=sb+cc+cv
FinSubAlgoritmo
SubAlgoritmo mostrarSalario(name,salary)
	Mostrar "El empleaqdo " name
	Mostrar "Su sueldo es: " salary
FinSubAlgoritmo

Algoritmo clase1Practica2
	//definicion de variables
	Definir sueldoBase, ventas, comisionCantidad, comisionVentas, sueldo Como Real
	Definir mensaje1, nombre, mensaje2, mensaje3 Como Caracter
	Definir cantidad Como Entero
	//inicializacion de variables
	sueldoBase=120000
	//con el uso de modulos voy a slicitar 
	//   los datos necesarios
	//Solicito el nombre
	mensaje1= "Ingrse el nombre del empleado: "
	pedirInformacion(mensaje1, nombre)
	//solicito la cantidad de autos vendidos 
	mensaje2="Ingrese la cantidad de autos vendidos: "
	pedirInformacion(mensaje2, cantidad)
	//solicito el monto de ventas
	mensaje3="Ingrse el monto total de venta: "
	pedirInformacion(mensaje3, ventas)
	//uso el modulo para calcular la comision por cantidad
	calcularComisionPorCantidad(cantidad,comisionCantidad)
	//uso el modulo para calcular la comision por ventas
	calcularComisionVentas(ventas,comisionVentas)
	//uso el modulo paa calcular el salario
	calcularSalario(sueldoBase,comisionCantidad,comisionVentas,sueldo)
	//para mostrar la informacion uso el modulo
	mostrarSalario(nombre,sueldo)
FinAlgoritmo
