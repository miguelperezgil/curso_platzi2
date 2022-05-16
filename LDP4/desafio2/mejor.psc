SubAlgoritmo mostrarMayorYMenor(nombreMayol,mayol,nombreMenol,menol)
	Mostrar "El nombre que tiene la mayor nota es: " nombreMayol ", y su nota: " mayol
	Mostrar "El nombre que tiene la menor nota es: " nombreMenol ", y su nota: " menol
FinSubAlgoritmo
SubAlgoritmo mayor_menor(arr1,arr2,12)
	Definir i Como Entero
	Definir auxNombreMayor,auxNombreMenor Como Caracter
	Definir auxTotalMayor,auxTotalMeneor Como Entero
	auxTotalMayor=0
	para i=1 Hasta 12 Hacer
		si arr1(i)>auxTotalMayor
			auxTotalMayor=arr1(i)
			auxNombreMayor=arr2(i)
			auxTotalMeneor=auxTotalMayor
		FinSi
		si arr1(i)<auxTotalMeneor
			auxTotalMeneor=arr1(i)
			auxNombreMenor=arr2(i)
			
		FinSi
	FinPara
	mostrarMayorYMenor(auxNombreMayor,auxTotalMayor,auxNombreMenor,auxTotalMeneor)
FinSubAlgoritmo
Funcion es_numero=func_validar_solo_numero(num)
	Definir es_numero Como Logico
	Definir nums,num_num Como Caracter
	Definir long_num,i Como Entero
	
	nums="0123456789"
	long_num=Longitud(nums)
	i=1
	Repetir
		num_num=Subcadena(nums,i,i)
		es_numero=(num=num_num)
		i=i+1
	Hasta Que (es_numero o i>long_num)
	
FinFuncion
Funcion valor_valido=func_validad_num_entero(mensaje1,mensaje2)
	Definir valor_valido Como Entero
	Definir cad_caracter,carac_i Como Caracter
	Definir  caracterEsCaracter,estaEnrango Como Logico
	Definir i,long_cadena,Auxcad_caracter Como Entero
	
	Repetir
		Repetir
			Mostrar mensaje1 Sin Saltar
			Leer cad_caracter
			long_cadena=Longitud(cad_caracter)
			i=1
			Repetir
				carac_i=Subcadena(cad_caracter,i,i)
				caracterEsCaracter=func_validar_solo_numero(carac_i)
				si caracterEsCaracter
					entonces i=i+1
				FinSi
			mientras Que (i<=long_cadena y caracterEsCaracter)
			si no caracterEsCaracter
				Mostrar "Dato no valido. " mensaje2
				Mostrar ""
				//Esperar Tecla
				//Limpiar Pantalla
			FinSi
			
		Hasta Que caracterEsCaracter
		Auxcad_caracter=ConvertirANumero(cad_caracter)
		si Auxcad_caracter>=0 y Auxcad_caracter<=150
			estaEnrango=Verdadero
		SiNo
			Mostrar mensaje2
			estaEnrango=falso
		FinSi
	Hasta Que estaEnrango y caracterEsCaracter
	valor_valido=ConvertirANumero(cad_caracter)
	
FinFuncion
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
	Definir valor_valido Como Caracter
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
			Mostrar "Dato no valido. " mensaje2
			Mostrar ""
			//Esperar Tecla
			//Limpiar Pantalla
		FinSi
	Hasta Que caracterEsCaracter
	valor_valido=cad_caracter
FinFuncion
Algoritmo sin_titulo
	Definir nombre,arrNombre,aux1 Como Caracter
	Definir nota,arrNota,auxNota,acum,aux Como Entero
	Definir i,j Como Entero
	Definir promedio Como Real
	Dimension arrNombre(12)
	Dimension arrNota(12)
	
	para i=1 Hasta 12 Hacer
		Mostrar "Ingrese el " i "° nombre"
		nombre=func_validar_caracter("Ingrese el nombre","Solo se admiten mayusculas,minusculas,acentos,diéresis y espacios")
		arrNombre(i)=nombre
		Mostrar "Ingrese la nota de " arrNombre(i) " (" i " nota)"
		nota=func_validad_num_entero("Ingrese la nota (0-150)","Solo se admite un numero entero entre 0 y 150")
		arrNota(i)=nota
	FinPara
	Limpiar Pantalla
	
	Mostrar Mayusculas("nombre y nota respectiva sin orden")
	para i=1 Hasta 12 Hacer
		Mostrar arrNombre(i) " con nota: " arrNota(i)
		auxNota=arrNota(i)
		//acum=acum+auxNota
	FinPara
	
	Para i=1 Hasta 12 Hacer
		Para j=1 Hasta 11 Hacer
			si arrNota(j)<arrNota(j+1)
				aux=arrNota(j)
				aux1=arrNombre(j)
				arrNota(j)=arrNota(j+1)
				arrNombre(j)=arrNombre(j+1)
				arrNota(j+1)=aux
				arrNombre(j+1)=aux1
			FinSi
		FinPara
	FinPara
	
	acum=0
	para i=1 Hasta 12 Hacer
		Mostrar arrNombre(i) " con nota: " arrNota(i)  
		auxNota=arrNota(i)
		acum=acum+auxNota
	FinPara
	promedio=acum/12
	Mostrar ""
	Mostrar Mayusculas("mayor y menor nota")
	mayor_menor(arrNota,arrNombre,12)
	Mostrar ""
	
	Mostrar "Los que obtuvieron una nota mayor al promedio (" promedio ")"
	Para i=1 Hasta 12 Hacer
		si arrNota(i)>promedio
			Mostrar arrNombre(i) " con nota: " arrNota(i)
		FinSi
	FinPara
	
FinAlgoritmo
