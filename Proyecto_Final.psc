
	Algoritmo Proyecto_Final3
		// vacantes disponibles
		Dimension niveli[3] 
		Dimension nivelp[6] 
		Dimension nivel[3]
		Dimension torneos[6]
		Definir opcionMenu, cantVacantes,menuPrincipal, A�oElegido, numdoc como Entero
		Definir VacanteElegida como Cadena
		Definir cantidatorneos como Entero
		Definir apellido Como Caracter
		cantVacantes<-1
		
		Repetir
			escribir "Que desea hacer?"
			escribir "1. Inscripciones"
			escribir "2. Administraci�n"
			escribir "3. Salir"
			Leer menuPrincipal
			
			//reservar nivel educativo//
			Si menuPrincipal=1 Entonces
				
				nivel[1] <- " Nivel Inicial "
				nivel[2] <- " Nivel Primaria"
				nivel[3] <- " Nivel Secundario"
				niveli[1] <- " Sala de 3 "
				niveli[2] <- " Sala de 4 "
				niveli[3] <- " Sala de 5 "
				nivelp[1] <- " 1� A�o "
				nivelp[2] <- " 2� A�o"
				nivelp[3] <- " 3� A�o"
				nivelp[4] <- " 4� A�o "
				nivelp[5] <- " 5� A�o "
				nivelp[6] <- " 6� A�o "
				
				cantVacantes<-1 //cantidad de vacantes tomados
				
				Repetir
					Para cantVacantes<-1 Hasta 2 Hacer
						
						Mostrar "Seleccione el Nivel que desea Inscribirse:"
						Para i <- 1 Hasta 3
							Mostrar i, ". ", nivel[i]
						Fin Para
						Leer nivelElegido
						
						Si nivelElegido=1 Entonces
							Mostrar "Seleccione el a�o:"
							Para i <- 1 Hasta 3
								Mostrar i, ". ", niveli[i]
							Fin Para
							Leer a�oElegido
						SiNo
							Mostrar "Seleccione el a�o:"
							Para i <- 1 Hasta 6
								Mostrar i, ". ", nivelp[i]
							Fin Para
							Leer a�oElegido
						Fin Si
						
						Mostrar " Inscripci�n reservada exitosamente."
						cantVacantes<-cantVacantes+1	
					Fin Para
					Mostrar "�Desea reservar otra vacante? (1: S� / 0: No)"
					Leer opcionMenu
				Hasta que opcionMenu = 0	
				
			FinSi	
			//opcion2 del menu principal//
			Si menuPrincipal=2 Entonces
				Escribir " Elija una opci�n:"
				Escribir "1. Aranceles"
				Escribir "2. Calendario de vencimientos"
				Escribir "3. Inscripci�n a Torneos "
				Leer menu
				Segun menu Hacer
					
					1:  Escribir " Aranceles vigentes al 01/09/2023"
						
						Escribir " La cuota del Nivel Inicial de Sala de 3 a�os a Sala de 5 a�os,es de:$ 24.319 "
						Escribir " La cuota de Primaria 1� a 6� Grado es de:$ 27.588"
						Escribir " La cuota de Secundaria 1� a 6� es de:$ 23.633"
						
						Escribir "IMPORTANTE: NO SE DESCARTAN NUEVAS MODIFICACIONES, EN VIRTUD DE LAS VARIACIONES EN LOS ACUERDOS PARITARIOS."
						
					2:  Escribir " * Calendario de vencimientos del ciclo lectivo 2023 *"
						
						Escribir " Mantenimiento Servicio Educativo: 7/2/2023"
						Escribir " Marzo: 8/03/2023"
						Escribir " Abril: 07/04/2023"
						Escribir " Mayo:  06/05/2023"
						Escribir " Junio: 07/06/2023"
						Escribir " Julio: 07/07/2023"
						Escribir " Agosto: 05/08/2023"
						Escribir " Septiembre: 07/09/2023"
						Escribir " Octubre: 07/10/2023"
						Escribir " 1� Anticipo reserva de vacante 2024: 07/10/2023"
						Escribir " Noviembre: 07/11/2023"
						Escribir " 2� Anticipo de reserva de vacante 2024: 07/11/2023"
						Escribir " Diciembre: 07/12/2023"
						Escribir " 3� Anticipo de reserva de vacante 2024: 07/12/2023"
						Escribir " 4� Anticipo de reserva de vacante 2024: 06/01/2024"
					3: 
						cantidadtorneos<-1
						Mostrar " Ingrese su Nombre y Apellido:"
						Leer apellido
						Mostrar " Ingrese su n�mero de DNI:"
						Leer numdoc
						Repetir
							
							  Mostrar " Ingrese el Torneo que quiere participar:"
							  Leer torneos[cantidadtorneos]
							  cantidadtorneos<-cantidadtorneos+1
							  Mostrar " Desea inscribirse a otro torneo? (1:S�/0:No)"
							  Leer opcion
						Hasta Que opcion=0 
					
					          
						     Mostrar "Torneos al que se Inscribi� ", apellido
						Para i<-1 Hasta cantidadtorneos
							Mostrar torneos[i]
						FinPara
					De Otro Modo:
						Escribir " Ha seleccionado un n�mero err�neo, debe elegir de 1 a 3"
				Fin Segun
			FinSi
			
		Hasta Que menuPrincipal=3	
FinAlgoritmo
