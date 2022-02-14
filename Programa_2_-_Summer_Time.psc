//Algoritmo creado por: Erick Barrera y Xavier López (12/02/2022) 
//Propósito del Algoritmo: El propósito de la aplicación SummerTime es que dependiendo de la fecha u hora, determinar si será un buen día para ir al puerto ya sea por la mañana o la tarde. 

Algoritmo SummerTime
	//Variable que contiene el nombre del usuario.
	Definir nombre como cadena;
	Definir num1, num2, num3, res1, res2, res3 Como Entero
	
	//Variables para definir el fecha para ir al puerto en la mañana.
	Definir d, dia, m, a, t, b, ParImpar Como Entero
	
	//Variables para definir el fecha y hora para ir a la playa en la tarde.
	Definir dia1, m1, a1, hora, minutos, segundos1, hrfm, mrfm, srfm, d1 Como Entero
	Definir numA, numB, numC, numD, numE, numF, numG, res11, res22, res33, res4, res5, res6, res7, resultado1, resultado2 Como Entero
	
	//Bienvenida al usuario. Se le pide que ingrese su nombre y si va a viajar en la mañana o en la tarde.
	Escribir "**************************";
	Escribir "bienvenido a summer time";
	Escribir "**************************";
	Escribir ""
	Escribir "ingrese su nombre";
	Escribir "";
	Leer nombre;
	Escribir "";
	Escribir "Escribir (1), si desea salir por la mañana o (2) por la tarde";
	Leer op;
	
	//Condicional que verifica que si sale durante la mañana se le pedirá la fecha actual, para calcular los días restantes para que termine el año.
	Si (op = 1 ) Entonces
		
		Escribir "Ingrese el dia actual"
		leer dia
		Escribir "Ingrese el mes actual"
		leer m
		Escribir "Ingrese el año actual"
		leer a
		
		//Se verifica si el año es bisiesto.
		Si a%4==0 & a%100<>0 | a%400==0 Entonces
			b=29;
		SiNo
			b=28;
		FinSi
		
		//Se calculan los días dependiendo del mes en el que este el usuario.
		Si m=1 Entonces
			d=0;
		SiNo
			Si m=2 Entonces
				d=31;
			SiNo
				Si m=3 Entonces
					d=31+b;
				SiNo
					Si m=4 Entonces
						d=31+b+31;
					SiNo
						Si m=5 Entonces
							d=31+b+31+30;
						SiNo
							Si m=6 Entonces
								d=31+b+31+30+31;
							SiNo
								Si m=7 Entonces
									d=31+b+31+30+31+30; 
								SiNo
									Si m=8 Entonces
										d=31+b+31+30+31+30+31;
									SiNo
										Si m=9 Entonces
											d=31+b+31+30+31+30+31+31;
										SiNo
											Si m=10 Entonces
												d=31+b+31+30+31+30+31+31+30; 
											SiNo
												Si m=11 Entonces
													d=31+b+31+30+31+30+31+31+30+31;
												SiNo
													Si m=12 Entonces
														d=31+b+31+30+31+30+31+31+30+31+30; 
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSI
			FinSi
		FinSi
		
		//Se determina los días restantes que faltan para fin de año.
		t=((337+b)-(dia+d));
		
		//Se realiza la suma de los dígitos de los días faltantes para fin de año.
		num1 <- trunc(t/100)
		res1 <- t mod 100
		num2 <- trunc(t/10)
		res2 <- t mod 10
		num3 <- trunc(t/1)
		
		
		ParImpar = (num1+num2+num3)
		
		//Se le informa al usuario la fecha que ingresó y los días que faltan para el año termine.
		Escribir "La fecha actual es: ", dia, "/", m, "/", a
		Escribir "Faltan: ", t, " días para que el año termine."
		
		//Condicional para ver si la suma de los días restantes es par o impar.
		Si (ParImpar%2 = 0)
			Escribir "Hola ", nombre, ", te indicamos que si sales hoy por la mañana tendrás un excelente día para ir al puerto."
		SiNo 
			Si (ParImpar%2 <> 0) Entonces
				Escribir "Hola ", nombre, ", te indicamos que si sales hoy por la mañana tendrás un mal día para ir al puerto."
			FinSi
		FinSi
		
		
	//Condicional que verifica que si sale durante la tarde se le pedirá la fecha y hora actuales, para calcular las horas restantes para que termine el mes.
	SiNo op = 2
		
		//Se le pide al usuario ingresar la fecha y la hora actual.
		Escribir "Ingrese el dia actual"
		leer dia1;
		Escribir "Ingrese el mes actual"
		leer m1;
		Escribir "Ingrese el año actual"
		leer a1;
		Escribir "Ingrese la hora actual"
		leer horas;
		Escribir "Ingrese los minutos actuales"
		leer minutos;
		Escribir "Ingrese los segundos actuales"
		leer segundos1;
		
		
		//Condicional que verifica si el año es bisiesto.
		Si a1%4==0 & a1%100<>0 | a1%400==0 Entonces
			b=29;
		SiNo
			b=28;
		FinSi
		
		//Se calculan por medio de condicionales los días dependiendo del mes en el que este el usuario (para realizar el cálculo de horas).
		Si m1=1 Entonces
			d1=31;
		SiNo
			Si m=2 Entonces
				d1=b;
			SiNo
				Si m1=3 Entonces
					d1=30;
				SiNo
					Si m=4 Entonces
						d1=31;
					SiNo
						Si m1=5 Entonces
							d1=30;
						SiNo
							Si m1=6 Entonces
								d1=30;
							SiNo
								Si m1=7 Entonces
									d1=31; 
								SiNo
									Si m1=8 Entonces
										d1=31;
									SiNo
										Si m1=9 Entonces
											d1=30;
										SiNo
											Si m=10 Entonces
												d=31; 
											SiNo
												Si m1=11 Entonces
													d1=30;
												SiNo
													Si m1=12 Entonces
														d1=31; 
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSI
			FinSi
		FinSi
		
		//Se calculan las horas restantes para que el mes finalize.
		hrfm <- ((d1*24)-(((dia-1)*24)+(hora+1)));
		
		//Se calculan los minutos restantes para que el mes finalize.
		mrfm <- ((60-minutos));
		
		//Se calculan los segundos restantes para que el mes finalize.
		srfm <- ((60-segundos1));
		
		//Se separa en digitos las horas restantes para fin de año.
		numA <- trunc(hrfm/1000000)
		res11 <- t mod 1000000
		
		numB <- trunc(hrfm/100000)
		res22 <- t mod 100000
		
		numC <- trunc(hrfm/10000)
		res33 <- t mod (10000)
		
		//Se separa en digitos los minutos restantes para fin de año.
		numD <- trunc(mrfm/1000)
		res4 <- t mod 1000
		
		numE <- trunc(mrfm/100)
		res5 <- t mod 100
		
		//Se separa en digitos los segundos restantes para fin de año.
		numF <- trunc(srfm/10)
		res6 <- t mod 10
		
		numG <- trunc(srfm/1)
		res7 <- t mod 1
		
		//Se verifica por medio de condicionales si los digitos de las horas restantes para fin de año son pares o impares.
		Si (numA%2=0) Entonces
			resultado1 = resultado1 + numA
		SiNo
			resultado2 = resultado2 + numA
		FinSi
		
		Si (numB%2=0) Entonces
			resultado1 = resultado1 + numB
		SiNo
			resultado2 = resultado2 + numB
		FinSi
		
		Si (numC%2=0) Entonces
			resultado1 = resultado1 + numC
		SiNo
			resultado2 = resultado2 + numC
		FinSi
		
		//Se verifica por medio de condicionales si los digitos de los minutos restantes para fin de año son pares o impares.
		Si (numD%2=0) Entonces
			resultado1 = resultado1 + numD
		SiNo
			resultado2 = resultado2 + numD
		FinSi
		
		Si (numE%2=0) Entonces
			resultado1 = resultado1 + numE
		SiNo
			resultado2 = resultado2 + numE
		FinSi
		
		//Se verifica por medio de un condicionales si los digitos de los segundos restantes para fin de año son pares o impares.
		Si (numF%2=0) Entonces
			resultado1 = resultado1 + numF
		SiNo
			resultado2 = resultado2 + numF
		FinSi
		
		Si (numG%2=0) Entonces
			resultado1 = resultado1 + numG
		SiNo
			resultado2 = resultado2 + numG
		FinSi
		
		//Se verifica por medio de un condicional si la suma de los numeros pares es mayor a los impares o viceversa.
		Si (resultado1 > resultado2) Entonces
			Escribir "Hola ", nombre, ", te indicamos que si sales hoy por la tarde tendrás un excelente día para ir a la playa."
		SiNo
			Escribir "Hola ", nombre, ", te indicamos que si sales hoy por la tarde tendrás un mal día para ir a la playa."
		FinSi
	FinSi

	//Fin del Algoritmo.
FinAlgoritmo
