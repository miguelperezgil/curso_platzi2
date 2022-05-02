Funcion dato = pedirDatoCharDual(mensaje, opc1, opc2)
	Definir dato Como Caracter
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido: [" opc1 " O " opc2 "]"
	Repetir
		leer dato
		dato =  Mayusculas(dato)
	Hasta Que (dato = opc1 O dato = opc2)
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

SubProceso solicitarTiposDePan(longitudMaxCadena, arreglo Por Referencia)
	Definir finalizar, auxPan como caracter
	Definir i, longCadena Como Entero
	Definir cadVacia, tipoExiste como Logico
	
	i=1
	Repetir
		//validacion de que el dato no sea vacio 
		//ni supere el tamaño requerido
		Repetir
			Mostrar "Ingrese el " i "° tipo de pan: " Sin Saltar
			leer auxPan
			auxPan = Mayusculas(auxPan)
			longCadena = Longitud(auxPan)
			cadVacia = (auxPan="")
			Si cadVacia
				Mostrar "El tipo de pan debe ser escrito, no dejar vacio"
			SiNo
				Si longCadena > longitudMaxCadena
					Mostrar "El tipo de pan ingresado excede la longitud de caracateres esperada (" longitudMaxCadena ")"
				FinSi
			FinSi
		Hasta Que (longCadena <= longitudMaxCadena Y ~cadVacia)
		
		tipoExiste = buscarEnArregloCaracterQueNoExista(auxPan, 10, arreglo)
		Si !tipoExiste
			arreglo[i] = auxPan
			i = i+1
			finalizar = pedirDatoCharDual("Desea finalizar?", "si", "no")
		SiNo
			Mostrar "El tipo de pan ingresado ya esta guardado, ingrese otro tipo."
			finalizar = "NO"
		FinSi
	Hasta Que finalizar = "SI"
	Limpiar Pantalla
FinSubProceso

SubAlgoritmo mostrarDatosDelArreglo(tamanoArreglo, arreglo)
	Definir i Como Entero
	Para i=1 hasta tamanoArreglo
		Si !(arreglo(i) = "")
			Mostrar i "° - " arreglo(i)
		FinSi
	FinPara
FinSubAlgoritmo

Algoritmo clase2practica3
	
	Definir tipos_Panes como Caracter
	Definir j Como Entero
	
	Dimension tipos_Panes[10]
	//Inicializar el arreglo
	Para j=1 hasta 10
		tipos_Panes[j] = ""
	FinPara
	
	solicitarTiposDePan(10, tipos_Panes)
	Mostrar "Los tipos de panes ingresados son: " 
	Mostrar ""
	mostrarDatosDelArreglo(10, tipos_Panes)
	
	
FinAlgoritmo

