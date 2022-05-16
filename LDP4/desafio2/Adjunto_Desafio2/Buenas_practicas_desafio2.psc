Subproceso Leer_Dat(Nomb_Vend Por Referencia,Cant_AutVend Por Referencia,Ttal_Vtas Por Referencia)
	Mostrar "¿Nombre del Empleado?" Sin Saltar
Leer Nomb_Vend
	Mostrar "¿Cantidad de autos vendidos?" Sin Saltar
Leer Cant_AutVend
	Mostrar "¿Monto total de ventas?" Sin Saltar
Leer Ttal_Vtas 
FinSubProceso

Funcion ResMultip<-Func_Multip_2Fact(Factor1,Factor2)
ResMultip=Factor1*Factor2
FinFuncion

Subproceso DET_Com(CantAV,MtoTVtas,com_total Por Referencia)
	Com_AV=Func_Multip_2Fact(CantAV,100000)
	Com_TVtas=Func_Multip_2Fact(MtoTVtas,0.18)
	com_Total=Com_AV+Com_TVtas
FinSubProceso

SubProceso Calc_SALARIO(Com_total,SalNeto Por Referencia)
SalNeto=700000+Com_total
FinSubProceso

SubProceso Mostrar_Salidas(Nomb_Vend,SalNeto)
	Mostrar Nomb_Vend "debe percibir como salario neto " SalNeto " Bs."
FinSubProceso

Algoritmo sin_titulo
	Leer_Dat(NombVend,CantAV,MtoTVtas)
	DET_Com(CantAV,MtoTVtas,com_total)
	Calc_SALARIO(Com_total,SalNeto)
	Mostrar_Salidas(NombVend,SalNeto)
	
FinAlgoritmo