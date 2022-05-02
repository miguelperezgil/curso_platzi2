Algoritmo sin_titulo
	Definir i Como Entero
	Definir acum_sueldos_homb, acum_sueldos_muj,sueldo Como Real
	Definir nombre,sexo Como Caracter
	acum_sueldos_homb=0
	acum_sueldos_nuj=0
	para i=1 hasta 10 Hacer
		Limpiar Pantalla
		Mostrar "Ingrese el nombre, sexo (F/,M), y el sueldo del " i "° empleado"
		Leer nombre,sexo,sueldo
		Segun Mayusculas(sexo)
			"F":acum_sueldos_muj=acum_sueldos_muj+sueldo
			"M":acum_sueldos_homb=acum_sueldos_homb+sueldo	
		FinSegun
		Mostrar "El sueldo de " nombre " incrementará el acumulador respectivo en: " sueldo
		Esperar 1 Segundos
	FinPara
	Mostrar "El acumulador de sueldos de las mujeres dio: " acum_sueldos_muj
	Mostrar "El acumulador de suedlosd e los hombres dio: " acum_sueldos_homb
FinAlgoritmo
