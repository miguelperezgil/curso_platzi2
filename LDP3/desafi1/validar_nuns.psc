Funcion numPos=Func_LeerPos(mensaje)
	Limpiar Pantalla
	Repetir
		Mostrar mensaje Sin Saltar
		Leer  num
	Hasta Que (num>0)
	numPos=num
FinFuncion
SubAlgoritmo leer_Topes(topeInf Por Referencia,topeSup Por Referencia)
	Repetir
		topeInf=Func_LeerPos("Ingrese el tope inferior del rango")
		topeSup=Func_LeerPos("Ingrese el tope superior del rango")
	Hasta Que  !(topeInf<=topeSup)
FinSubAlgoritmo
Funcion num=Func_LeerNumRango(mensaje,topeInf,topeSup)
	Limpiar Pantalla
	Repetir
		Mostrar mensaje topeInf " a " topeSup Sin Saltar
		Leer num
	Hasta Que !(num>=topeInf y num<=topeSup)
FinFuncion
Algoritmo validar_nuns
	Definir tInf, tSup,num Como Entero
	
	leer_Topes(tInf,tSup)
	num=Func_LeerNumRango("Ingrese numero en el rango de ",tInf,tSup)
FinAlgoritmo
