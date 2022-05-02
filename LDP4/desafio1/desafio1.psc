Funcion datoSalida=ubicarDato(mensaje,arreglo,datoEncontrar)
	
FinFuncion
Funcion dato=calcularPromedio(tamañoArr,arreglo)
	
FinFuncion
SubAlgoritmo solicitarDatoEnRango()
	
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