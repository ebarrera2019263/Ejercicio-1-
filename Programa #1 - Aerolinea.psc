Funcion BTemper <- VerificarTemperatura(opcionTemperC, temperaturaP)
	Si (opcionTemperC = 1 & temperaturaP < 38) | (opcionTemperC = 2 & temperaturaP < 100) Entonces
		BTemper <- Verdadero;
	SiNo
		Si (opcionTemperC = 1 & temperaturaP >= 38) | (opcionTemperC = 2 & temperaturaP >= 100)  Entonces
			Escribir "El pasajero presenta fiebre, no puede abordar el vuelo."
			BTemper <- Falso;
		FinSi
	FinSi
FinFuncion

Funcion alturaP <- AlturaPasajero(opcionMaltura)
	Si (opcionMaltura = 1) Entonces
		Escribir "Ingrese la altura del pasajero #", numeroPasajero;
		Leer alturaP
		alturaP = alturaP
	SiNo opcionMaltura = 2
		Escribir "Ingrese los pies que mide el pasajero: "
		Leer alturaPies
		Escribir "Ingrese las pulgadas que mide el pasajero: "
		Leer alturaPul
		alturaP = (alturaPies*0.3048)+(alturaPul*0.0254)
		Escribir "La altura del pasajero es de: ", alturaP, " metros."
	FinSi
FinFuncion


Algoritmo Aerolinea
	
	Definir contadorArreglo Como Entero
	contadorArreglo = 0
	Definir contadorWhile Como Entero
	contadorWhile = 0
	Definir numeroPasajero Como Entero
	numeroPasajero = 1
	Definir nombreVuelo Como Cadena
	Definir nombreDestino Como Cadena
	
	//Variables VerificarPruebaCovid
	Definir opcionPruebaC, DiasPruebaC Como Entero
	Definir BPrueba Como Logico
	
	//Variables Funcion VerificarTemperatura
	Definir opcionTemperC Como Entero
	Definir BTemper Como Logico
	Definir temperaturaP Como Real
	
	//Variables Funcion VerificarSegundaVacuna
	Definir opcionVacuna, opV1, opV2, opV3, opV4, opV5, opV6, opV7, opV8 Como Entero
	Definir BVacuna Como Logico
	
	//Variables Funcion RecuentoPasajerosInforme
	Definir PasajeroVN Como Entero
	PasajeroVN = 0
	Definir PasajeroAu Como Entero
	PasajeroAu = 0
	Definir PasajeroTF Como Entero
	PasajeroTF = 0
	Definir PasajeroEV Como Entero
	PasajeroEV = 0
	
	//Variables Funcion AlturaPasajero
	Definir opcionMaltura Como Entero
	Definir alturaP, alturaPies, alturaPul, sumaAltura Como Real
	sumaAltura = 0
	alturaPies = 0
	alturaPul = 0
	
	//Variables Funcion MayorMenorPromedio
	Definir promedioAltura Como Real
	promedioAltura = 0
	Definir alturaMayor Como Real
	alturaMayor = 0
	Definir alturaMenor Como Real
	alturaMenor = 0
	Definir nPasajeros Como Entero
	nPasajeros = 0;
	
	
	Escribir "Hola bienvenido!"
	Escribir "Ingrese el nombre del vuelo por favor: "
	Leer nombreVuelo;
	Escribir "Ingrese el nombre del destino por favor: "
	Leer nombreDestino;
	Escribir "Ingrese el número de pasajeros que abordarán el vuelo: ", nombreVuelo, ", con destino a: ", nombreDestino
	Leer nPasajeros;
	
	Dimension Arreglo(nPasajeros);
	
	
	Mientras contadorWhile < nPasajeros Hacer
		
		//VerificarPruebaCovid
		Escribir "Por favor ingrese los datos del pasajero #", numeroPasajero;
		Escribir "¿El pasajero cuenta con prueba de covid?"
		Escribir "1) Si"
		Escribir "2) No"
		Leer opcionPruebaC;
		Si opcionPruebaC == 1 Entonces
			Escribir "¿Cuántos días de antigüedad tiene la prueba?"
			Leer DiasPruebaC;
			Si DiasPruebaC >= 3 Entonces
				Escribir "Su prueba de covid tiene que terner menos de 3 días de antigüedad, por cuestiones de bioseguridad, no puede abodar el avión."
				BPrueba = Falso
			SiNo
				BPrueba = Verdadero
			FinSi
		SiNo opcionPruebaC = 2
			Escribir "El pasajero no puede abordar el avión sin su prueba de covid."
			BPrueba = Falso
		FinSi
		
		
		Escribir "Seleccione en que medida será tomada la temperatura: "
		Escribir "1) Centígrados"
		Escribir "2) Farenheit"
		Leer opcionTemperC;
		Escribir "Por favor ingrese la temperatura del pasajero #", numeroPasajero;
		Leer temperaturaP;
		
		//Funcion VerificarTemperatura
		BTemper <- VerificarTemperatura(opcionTemperC, temperaturaP);
		
		//Funcion Verificar Segunda Vacuna
		Escribir "¿Cuál fue la última vacuna que el pasajero #", numeroPasajero, " se colocó? Seleccione una opción:"
		Escribir "1) Moderna"
		Escribir "2) Pfizer"
		Escribir "3) AstraZeneca"
		Escribir "4) Jansen"
		Escribir "5) Sinopharm"
		Escribir "6) Sinovac"
		Escribir "7) Bharat"
		Escribir "8) No Reconocida"
		Leer opcionVacuna;
		
		Si (opcionVacuna = 1) Entonces
			opV1 = opV1 + 1;
			BVacuna <- Verdadero;
		SiNo
			Si (opcionVacuna = 2) Entonces
				opV2 = opV2 + 1;
				BVacuna <- Verdadero;
			SiNo
				Si (opcionVacuna = 3) Entonces
					opV3 = opV3 + 1;
					BVacuna <- Verdadero;
				SiNo
					Si (opcionVacuna = 4) Entonces
						opV4 = opV4 + 1;
						BVacuna <- Verdadero;
					SiNo
						Si (opcionVacuna = 5) Entonces
							opV5 = opV5 + 1;
							BVacuna <- Verdadero;
						SiNo
							Si (opcionVacuna = 6) Entonces
								opV6 = opV6 + 1;
								BVacuna <- Verdadero;
							SiNo
								Si (opcionVacuna = 7) Entonces
									opV7 = opV7 + 1;
									BVacuna <- Verdadero;
								SiNo
									Si (opcionVacuna = 8) Entonces
										opV8 = opV8 + 1;
										BVacuna <- Falso;
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		
		Escribir "Seleccione en que medida está tomada la altura del pasajero: "
		Escribir "1) Metros"
		Escribir "2) Pies y Pulgadas"
		Leer opcionMaltura;
		alturaP = 0
		
		//Funcion AlturaPasajero
		alturaP <- AlturaPasajero(opcionMaltura);
		
		sumaAltura = sumaAltura + alturaP
		
		Arreglo[contadorArreglo] <- alturaP;
		
		//Acciones para ciclado
		contadorArreglo = contadorArreglo +1
		contadorWhile = contadorWhile + 1
		numeroPasajero = numeroPasajero + 1
		
		//RecuentoPasajerosInforme
		Si BPrueba = Verdadero & BTemper = Verdadero & BVacuna = Verdadero Entonces
			PasajeroAu = PasajeroAu + 1
		FinSi
		
		Si (BPrueba = Verdadero & BTemper = Falso & BVacuna = Verdadero) | BTemper = Falso  Entonces
			PasajeroTF = PasajeroTF + 1
		FinSi
		Si (BPrueba = Falso)  Entonces
			PasajeroEV = PasajeroEV + 1
		FinSi
		
		Si (BVacuna = Falso) Entonces
			PasajeroVN = PasajeroVN + 1
		FinSi
		
		
	FinMientras
	
	
	//Mayor / Menor / Promedio
	alturaMayor <- Arreglo[0]
	alturaMenor <- Arreglo[0]
	
	Para i <- 0 Hasta nPasajeros-1 Con Paso 1 Hacer
		Si Arreglo[i] > alturaMayor Entonces
			alturaMayor <- Arreglo[i]
		FinSi
		
		Si Arreglo[i] < alturaMenor Entonces
			alturaMenor <- Arreglo[i]
		FinSi
		Escribir Arreglo(i);
	FinPara
	
	promedioAltura = (sumaAltura/nPasajeros)
	
	
	//Funcion CrearInforme
	Escribir "----INFORME----"
	Escribir "Vuelo: ", nombreVuelo, ", con destino a: ", nombreDestino
	Escribir "Cantidad de pasajeros: ", nPasajeros
	Escribir "Pasajeros Autorizados para abordar: ", PasajeroAu
	Escribir "Pasajeros no autorizados por temperatura: ", PasajeroTF
	Escribir "Pasajeros con examen covid vencido: ", PasajeroEV
	Escribir "Pasajeros no autorizador por vacuna no reconocida: ", PasajeroVN
	Escribir "---ESTADISTICAS DE VACUNAS----"
	Escribir "1) Moderna: ", opV1
	Escribir "2) Pfizer: ", opV2
	Escribir "3) AstraZeneca: ", opV3
	Escribir "4) Jansen: ", opV4
	Escribir "5) Sinopharm: ", opV5
	Escribir "6) Sinovac: ", opV6
	Escribir "7) Bharat: ", opV7
	Escribir "8) No Reconocida: ", opV8
	Escribir "----Estatura en metros----"
	Escribir "El promedio de las alturas es: ", promedioAltura
	Escribir "La altura maxima es de: ", alturaMayor
	Escribir "La altura minima es de: ", alturaMenor
	
FinAlgoritmo

