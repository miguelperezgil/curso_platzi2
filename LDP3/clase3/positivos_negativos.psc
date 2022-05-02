Algoritmo positivos_negativos
	Definir num,i Como Entero
	Definir positivis,negativos,ceros Como Entero
	positivos=0
	negativos=0
	ceros=0
	para i=1 hasta 10 Hacer
		Mostrar "Ingrse un numero entero"
		Leer num
		si num<>0
			si num>0
				positivos=positivos+1
			SiNo
				negativos=negativos+1
			FinSi
		SiNo
			ceros=ceros+1
		FinSi
	FinPara
	Mostrar "Positivos: " positivos
	Mostrar "Negativos: " negativos
	Mostrar "Ceros: " ceros
FinAlgoritmo
