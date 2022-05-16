Funcion es_caracter=func_validar_solo_caracter(carac)
	Definir es_caracter Como Logico
	Definir caracters_sinNum,carac_carac Como Caracter
	Definir long_carac_sinNum,i Como Entero
	
	caracters_sinNum="QWERTYUIOPÑLKJHGFDSAZXCVBNMqwertyuiopasdfghjklñzxcvbnmáéúíóÁÉÍÓÚ ´Üü"
	long_carac_sinNum=Longitud(caracters_sinNum)
	i=1
	Repetir
		carac_carac=Subcadena(caracters_sinNum,i,i)
		es_caracter=(carac=carac_carac)
		i=i+1
	Hasta Que (es_caracter o i>long_carac_sinNum)
	
FinFuncion
Funcion valor_valido=func_validar_caracter(mensaje1,mensaje2)
	Definir cad_caracter,carac_i Como Caracter
	Definir  caracterEsCaracter Como Logico
	Definir i,long_cadena Como Entero
	Repetir
		Mostrar mensaje1 Sin Saltar
		Leer cad_caracter
		long_cadena=Longitud(cad_caracter)
		i=1
		Repetir
			carac_i=Subcadena(cad_caracter,i,i)
			caracterEsCaracter=func_validar_solo_caracter(carac_i)
			si caracterEsCaracter
				entonces i=i+1
			FinSi
		mientras Que (i<=long_cadena y caracterEsCaracter)
		si no caracterEsCaracter
			Mostrar "Caracter no valido. " mensaje2
			Mostrar ""
			Esperar Tecla
			Limpiar Pantalla
		FinSi
	Hasta Que caracterEsCaracter
	valor_valido=cad_caracter
FinFuncion
Algoritmo sin_titulo
	
	Dimension arrNombre(12)
	para i=1 Hasta 12 Hacer
		Mostrar "Ingrese el " i "° nombre"
		nombre=func_validar_caracter("Ingrese el nombre","Solo se admiten mayusculas,minusculas,acentos,diéresis y espacios")
		arrNombre(i)=nombre
	FinPara
	para i=1 Hasta 12 Hacer
		Mostrar arrNombre(i)
	FinPara
	
	Mostrar nombre
FinAlgoritmo
