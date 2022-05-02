Funcion datoSalida=ubicarDato(mensaje,arreglo,datoEncontrar,n)//donde n es el tamaño del arreglo
	Definir datoSalida Como logico
	definir i Como Entero
	datoSalida=falso
	i=1
	Repetir
		si  datoEncontrar=arreglo(i)
			datoSalida=Verdadero
			mostrar mensaje
		SiNo
			datoSalida=falso
		FinSi
		i=i+1
	Hasta Que datoSalida=Verdadero o i>n
FinFuncion

Funcion datoPromedio=calcularPromedio(tamañoArr,arreglo)
	Definir datoPromedio Como Real
	definir i Como Entero
	definir suma Como Real
	suma=0
	si tamañoArr<>0
		Para i=1 hasta tamañoArr Hacer
			suma=suma+arreglo(i)
		FinPara
		datoPromedio=suma/tamañoArr
	SiNo
		Mostrar "No se puede dividir por cero"
		datoPromedio=0
	FinSi
FinFuncion

SubAlgoritmo solicitarDatoEnRango(dato,minimoDelRango,MaximoDelRango)
	Repetir
		mostrar "Ingrese el numero en el rago de " minimoDelRango " a " MaximoDelRango
		Leer dato
		si no(dato>=minimoDelRango o dato<=MaximoDelRango)
			Mostrar "Error"
			Mostrar "El dato ingresado (" dato ") no esta en el rango (" minimoDelRango " - " MaximoDelRango ")" 
		FinSi
	Hasta Que (dato>=minimoDelRango y dato<=MaximoDelRango)
FinSubAlgoritmo

Funcion datoPorcentaje=saberPorcentaje(mensaje,arreglo,dato,n)//arreglo=arreglo(n),donde n es el tamaño del arreglo
	Definir datoPorcentaje Como Real
	Definir contadorEspecifico,i Como Entero
	contadorEspecifico=0
	Para i=1 hasta n Hacer
		si arreglo(i)>dato
			contadorEspecifico=contadorEspecifico+1
		FinSi
	FinPara
	Mostrar mensaje
	datoPorcentaje=contadorEspecifico/n*100
FinFuncion

Funcion dato = pedirDatoCharDual(mensaje, opc1, opc2)
	Definir dato Como Caracter
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	Mostrar mensaje 
	Mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
	Repetir
		leer dato
		dato =  Mayusculas(dato)
	Hasta Que (dato = opc1 O dato = opc2)
FinFuncion

Funcion existencia=buscarExistencia(arreglo,auxNombre,100)
	definir existencia Como caracter
	Definir j Como Entero
	existencia="NO"
	j=1
	Repetir
		si auxNombre = arreglo(j)
			existencia="SI"
			Mostrar "El nombre " auxNombre " ya fue resgistrado"
		FinSi
		j=j+1
	Hasta Que existencia="SI" O j>100
FinFuncion

SubAlgoritmo resgistrarUsuario(arreglo,100,auxNombre)
	Definir agregarMas,nombreExiste,auxClave,correo Como Caracter
	Definir caracteresMax,caracteresMin,longitudClave,i,suerte como entero
	
	i=1
	Repetir
		Mostrar "Ingrese por " i "° vez, el nombre de usuario que desea: " Sin Saltar
		Leer auxNombre
		auxNombre=Mayusculas(auxNombre)
		nombreExiste=buscarExistencia(arreglo,auxNombre,100)
		si nombreExiste="NO"
			arreglo(i)=auxNombre
			i=i+1
			agregarMas=pedirDatoCharDual("Desea agregar otro nombre, cambiar el nombre de usuario? ", "SI", "NO")
			agregarMas=Mayusculas(agregarMas)
			Limpiar Pantalla
		SiNo
			agregarMas="SI"
		FinSi
	Hasta Que agregarMas="NO"
	Limpiar Pantalla
	caracteresMax=12
	caracteresMin=6
	
	Repetir
		
		Mostrar "Ingrese la clave, debe tener un minimo de " caracteresMin " y un maximo de " caracteresMax " (caracteres): " Sin Saltar
		Leer auxClave
		//auxClave=Mayusculas(auxClave)
		longitudClave=Longitud(auxClave)
		si longitudClave<caracteresMin
			Mostrar ""
			Mostrar "Clave invalida, no tiene el minimo de caracteres requeridos (!! " caracteresMin " ¡¡ a " caracteresMax ")"
			
		sino
			si longitudClave>caracteresMax
				Mostrar ""
				Mostrar "Clave invalida, supera el maximo de caracteres requeridos (" caracteresMin " a !! " caracteresMax " ¡¡)"
				
			FinSi
		FinSi
	Hasta Que  (longitudClave>=6 y longitudClave<=12)
	suerte=Aleatorio(1,3)
	Segun suerte Hacer
		1:
			correo="Gmail.com"
		2:
			correo="Yahoo.com"
		3:
			correo="Hotmail.com"
		De Otro Modo:
			corre="CadiF1"
	Fin Segun
	Mostrar "Su usuario:" auxNombre "_" aleatorio(23,67) "@" correo 
	Mostrar "Su clave: " auxClave
FinSubAlgoritmo

Algoritmo sin_titulo
	Definir nombres,auxNombre,clave Como Caracter
	Definir i Como Entero
	dimension nombres(100)
	
	para i=1 Hasta 100 Hacer
		nombres(i)=""
	FinPara
	resgistrarUsuario(nombres,100,auxNombre)	
FinAlgoritmo
