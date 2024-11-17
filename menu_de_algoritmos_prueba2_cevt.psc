Algoritmo menu_de_algoritmos
	Definir categoria Como Entero
	
	Repetir //hacer mientras (Do while)
	Limpiar Pantalla
	Escribir "Seleccione la catergoria de Ejercicio"
	Escribir "1 :Algoritmo Secuenciales"
	Escribir "2 :Algoritmo Condicionales"
	Escribir "3 :Algoritmo Repetitivos o Ciclos"
	Escribir "4 :Salir"
	Escribir "Ingrese la opcion: "
	Leer categoria 
	
	Segun categoria Hacer
		Caso 1:
			menuEjerciciosSecuenciales()//llamar a funcion 
		Caso 2: //llamar a otro a funcion Algoritmo condicional
			menuEjerciciosCondicionales()
		Caso 3: //llamar a otro a funcion Algoritmo ciclos o repetitivos
			menuEjerciciosCiclos()
		Caso 4:  //salir no hace nada
		De Otro Modo:
			Escribir "La opcion ingresa no es valida.."
			Esperar Tecla //pausa
	FinSegun
	
	//agg sub menu 
	
Hasta Que categoria == 4
	
FinAlgoritmo
//subalgoritmo o SubProceso 
Funcion menuEjerciciosSecuenciales //inicio
	Definir opcion Como Entero
	Repetir 
		Limpiar Pantalla
		Escribir "Seleccione un Ejercicio Secuencial"
		Escribir "1 :Ejercicio 01 - descuento de compra del 15%"
		Escribir "2 :Ejercicio 02 - Comisión de venta "
	    //Agregar mas opciones 1 - 5 ejercicios
		Escribir "6 :Salir"
		Escribir "Ingrese la opcion: "
		Leer opcion
		
		Segun opcion Hacer
			Caso 1:
				descuentodecompra() //llmar al ejercicio de algoritmo
			Caso 2:
				Comisióndeventas()
				Caso 6:
		    De Otro Modo:
				Escribir "La opcion no es valida"
				Esperar Tecla // pausa
		FinSegun
	Hasta Que opcion == 6
FinFuncion
		Funcion menuEjerciciosCondicionales //inicio
			Definir opcion Como Entero
			Repetir
				Limpiar Pantalla
				Escribir "Seleccione un Ejercicio Condicional"
				Escribir "1 :Ejercicio 01 - Imprimir numero entero mayor"
				Escribir "2 :Ejercicio 02 - Aumento de sueldo"
				//Agregar mas opciones 1 - 5 ejercicios
				Escribir "6 :Salir"
				Escribir "Ingrese la opcion: "
				Leer opcion
				
				Segun opcion Hacer
					Caso 1:
						Imprimirnumeroenteromayor() //llmar al ejercicio de algoritmo
					Caso 2:
						Aumentodesueldo()
					Caso 6:
					De Otro Modo:
						Escribir "La opcion no es valida"
						Esperar Tecla // pausa
						
				FinSegun
			Hasta Que opcion == 6
	     FinFuncion

				Funcion menuEjerciciosCiclos //inicio
					Definir opcion Como Entero
					Repetir
						Limpiar Pantalla
						Escribir "Seleccione un Ejercicio Ciclos"
						Escribir "1 :Ejercicio 01 - suma de numeros positivos"
						Escribir "2 :Ejercicio 02 - Contar pares e impares"
						//Agregar mas opciones 1 - 5 ejercicios
						Escribir "6 :Salir"
						Escribir "Ingrese la opcion: "
						Leer opcion
						
						Segun opcion Hacer
							Caso 1:
								sumadenumerospositivos() //llmar al ejercicio de algoritmo
							Caso 2:
								Contarpareseimpares()
							Caso 6:
							De Otro Modo:
								Escribir "La opcion no es valida"
								Esperar Tecla // pausa
						FinSegun
				
	Hasta Que opcion == 6
FinFuncion 
//funcion Condicional
Funcion Imprimirnumeroenteromayor //ejercicio de 
	Definir cevt_n1, cevt_n2, cevt_n3, cevt_ne Como Real
	Limpiar Pantalla
	Escribir "Ingrese un numero para imprimir el mayor de ellos: "
	Leer cevt_n1
	Escribir "Ingrese otro numero diferente para imprimir el mayor de ellos: "
	Leer cevt_n2
	Escribir "Ingrese otro numero diferente para imprimir el mayor de ellos: "
	Leer cevt_n3
	si cevt_n1 > cevt_n2 y cevt_n1 > cevt_n3
		Entonces
		cevt_ne = cevt_n1
	SiNo
		Si cevt_n2 > cevt_n3 Entonces
			cevt_ne = cevt_n2
		SiNo
			cevt_ne = cevt_n3
			
		FinSi
	FinSi
	Escribir "el numero mayor es: ",cevt_ne
	Esperar Tecla
FinFuncion

Funcion Aumentodesueldo
	Definir sueldo Como Real
    LimpiarPantalla
    Escribir "Ingrese el sueldo del trabajador: "
    Leer sueldo
    Si sueldo < 1000 Entonces
        sueldo <- sueldo + sueldo * 0.15
    FinSi
    Escribir "El sueldo actualizado es: ", sueldo
    EsperarTecla
FinFuncion

//funcion secuencial
Funcion descuentodecompra //ejercicio de 
	Definir cevt_cdc, cevt_d, cevt_pf Como Real
	Limpiar Pantalla
	
	Escribir "Ingrese la cantidad de la compra para el descuento: "
	Leer cevt_cdc
	
	cevt_d = cevt_cdc * 0.15
	cevt_pf = cevt_cdc - cevt_d
	
	Escribir "El precio final de la compra es: " cevt_pf
	Esperar Tecla
FinFuncion

Funcion Comisióndeventas
Definir sueldo_base, comisiones, sueldo_total Como Real
Definir ventas1, ventas2, ventas3 Como Real
LimpiarPantalla;
Escribir "Ingrese el sueldo base del vendedor: "
Leer sueldo_base

Escribir "Ingrese el monto de la venta 1: "
Leer ventas1
Escribir "Ingrese el monto de la venta 2: "
Leer ventas2
Escribir "Ingrese el monto de la venta 3: "
Leer ventas3

comisiones <- (ventas1 + ventas2 + ventas3) * 0.10
sueldo_total <- sueldo_base + comisiones

Escribir "Comisiones por ventas: ", comisiones
Escribir "Sueldo total con comisiones: ", sueldo_total
EsperarTecla
FinFuncion

//funcion de ciclos o repetitivos
Funcion sumadenumerospositivos
	Definir cevt_n, cevt_s Como Real //numeros positivos //suma de numeros
	cevt_s = 0
	
	Repetir
		Limpiar Pantalla
		Escribir "Ingresa un número (negativo para terminar): "
		Leer cevt_n
		
		Si cevt_n >= 0 Entonces
			cevt_s = cevt_s + cevt_n
		FinSi
	Hasta Que cevt_n < 0
	
	Escribir "La suma de los números positivos ingresados es: ", cevt_s
	Esperar Tecla
FinFuncion
Funcion Contarpareseimpares
	Definir num, pares, impares Como Entero
    pares = 0
    impares = 0
	
    Repetir
        LimpiarPantalla
        Escribir "Ingrese un número (0 para salir): "
        Leer num
        Si num <> 0 Entonces
            Si num % 2 = 0 Entonces
                pares <- pares + 1
            Sino
                impares <- impares + 1
            FinSi
        FinSi
    Hasta Que num = 0
	
    Escribir "Números pares: ", pares
    Escribir "Números impares: ", impares
    EsperarTecla
FinFuncion
	