Funcion datoSalida=ubicarDato(mensaje,arreglo,datoEncontrar)//arreglo=arreglo(n),donde n es el tamaño del arreglo
	definir i Como Entero
	mostrar mensaje
	Para i=1 hasta n Hacer
		si datoEncontrar=arreglo(i)
			datoSalida=verdadero
		SiNo
			datoSalida=falso
		FinSi
	FinPara
FinFuncion

Funcion datoPromedio=calcularPromedio(tamañoArr,arreglo)
	Para i=1 hasta n Hacer
		suma=suma+arreglo(i)
	FinPara
	si suma>0
		datoPromedio=suma/n
	SiNo
		dato=0
	FinSi
FinFuncion

SubAlgoritmo solicitarDatoEnRango(dato,minimoDelRango,MaximoDelRango)
	Repetir
		mostrar "Ingrse el numero en el rago de " minimoDelRango " a " MaximoDelRango
		Leer dato
		si no(dato>=minimoDelRango o dato<=MaximoDelRango)
			Mostrar "Error"
			Mostrar "El dato ingresado (" dato ") no esta en el rango (" minimoDelRango " a " MaximoDelRango ")" 
		FinSi
	Hasta Que (dato>=minimoDelRango o dato<=MaximoDelRango)
FinSubAlgoritmo

Funcion dato=saberPorcentaje(mensaje,arreglo,dato)
	
FinFuncion

funcion encontrado=buscarEnArregloCaracterQueNoExista(datoABuscar, tamanoArreglo, arreglo)
	Definir k Como Entero
	Definir encontrado Como Logico
	encontrado = Falso
	k=1
	Repetir
		Si datoABuscar = arreglo(k)
			encontrado = Verdadero
		FinSi
		k = k + 1
	Hasta Que encontrado = Verdadero O k>tamanoArreglo
	Si encontrado = Verdadero
		Mostrar "El dato a buscar ya existe en el arreglo!"
	FinSi
FinFuncion

Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion
SubAlgoritmo registrarUsuario()
	
FinSubAlgoritmo
Algoritmo sin_titulo
	
FinAlgoritmo
//Escriba un modulo que le solicite al usuario nombre y clave 
//(como para un registro) EL nombre no debe coincidir con ningun 
//otro nombre ya cargado en el arreglo y se le solicite una clave 
//que debe contener entre 6 a 12 caracateres, si no esta entre 6 y 12 
//seguir preguntando hasta que el ingreso sea correcto. (Llamar a este modulo 
//o algoritmo registrarUsuario() ). Una vez este todo bien mostrar en pantalla: 
//nombre registrado y la clave seleccionada.