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
Funcion existencia=buscarExistencia(arreglo,auxNombre,100)
	definir existencia Como caracter
	Definir j Como Entero
	existencia="NO"
	j=1
	Repetir
		si auxNombre = arreglo(j)
			existencia="SI"
		FinSi
		j=j+1
	Hasta Que existencia="SI" O j>100
FinFuncion
SubAlgoritmo resgistrarUsuario(arreglo,100,auxNombre)
	Definir agregarMas,nombreExiste,clave Como Caracter
	Definir caracteresMax,caracteresMin,longitudClave,i como entero
	
	i=1
	Repetir
		Mostrar "Ingrese el " i "° nombre"
		Leer auxNombre
		auxNombre=Mayusculas(auxNombre)
		nombreExiste=buscarExistencia(arreglo,auxNombre,100)
		si nombreExiste="NO"
			arreglo(i)=auxNombre
			i=i+1
			agregarMas=pedirDatoCharDual("Desea agregar mas nombres, cambiar el nombre de usuario ?", "SI", "NO")
			agregarMas=Mayusculas(agregarMas)
		SiNo
			agregarMas="SI"
		FinSi
	Hasta Que agregarMas="NO"
	caracteresMax=12
	caracteresMin=6
	
	Repetir
		Mostrar "Ingrese la clave que debe tener un minimo de " caracteresMin " y un maximo de " caracteresMax " caracteres"
		Leer auxClave
		clave=Mayusculas(clave)
		longitudClave=Longitud(clave)
		si longitudClave<caracteresMin
			Mostrar "Clave invalida, no tiene el minimo de caracteres requeridos (" caracteresMin " a " caracteresMax ")"
		sino
			si longitudClave>caracteresMax
				Mostrar "Clave invalida, no tiene el maximo de caracteres requeridos (" caracteresMin " a " caracteresMax ")"
			FinSi
		FinSi
	Hasta Que  (longitudClave>=6 y longitudClave<=12)
	
	Mostrar auxNombre auxClave
	
FinSubAlgoritmo
Algoritmo sin_titulo
	Definir nombre,auxNombre,clave Como Caracter
	dimension nombres(100)
	
	para i=1 Hasta 100 Hacer
		nombres(i)=""
	FinPara
	resgistrarUsuario(nombres,100,auxNombre)
	
FinAlgoritmo
//Escriba un modulo que le solicite al usuario nombre y clave 
//(como para un registro) EL nombre no debe coincidir con ningun 
//otro nombre ya cargado en el arreglo y se le solicite una clave 
//que debe contener entre 6 a 12 caracateres, si no esta entre 6 y 12 
//seguir preguntando hasta que el ingreso sea correcto. (Llamar a este modulo 
//o algoritmo registrarUsuario() ). Una vez este todo bien mostrar en pantalla: 
//nombre registrado y la clave seleccionada.