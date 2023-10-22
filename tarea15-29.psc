Funcion  vini_cultores
	//11				
	definir tipo Como Caracter
	definir p_inicial Como Real
	definir t Como Entero
	
	Repetir// el bloque repite el codigo hasta que me ingrese un tipo de uva correcto
		Escribir "Ingrese el tipo de uva: ";leer tipo// le pido el tipo de uva
		tipo = Minusculas(tipo)// transforma la letra a Minusculas
		si tipo <> "a" & tipo <> "b" Entonces
			Escribir "Ingrese el tipo corecto"// evaluar el tipo de uva
		FinSi
	Mientras Que tipo <> "a" & tipo <> "b"// se repite siempre que no me ingresen un tipo de uva correcto osea
	
	Repetir// se repite hasta que me ingrese un tipo de tamaño correcto  1 o 2
		Escribir "Ingrese el tamaño de la uva: ";leer t//le pido el tipo tamaño
		si t <> 1 & t <> 2 Entonces// evaluar el tamaño
			Escribir "Ingrese el tamaño corecto"
		FinSi
	Mientras Que t <> 1 & t <> 2
	
	Escribir "Ingrese el precio inicial: "; leer p_inicial
	Segun tipo Hacer
		"a":
			si t == 1 Entonces//evaluo el tamaño para agregar o disminuir el valor
				p_inicial = p_inicial + 0.20
			SiNo
				si t == 2 Entonces
					p_inicial = p_inicial + 0.30
				FinSi
			FinSi
		"b":
			si t == 1 Entonces
				p_inicial = p_inicial - 0.30
			SiNo
				si t == 2 Entonces
					p_inicial = p_inicial - 0.50
				FinSi
			FinSi
	FinSegun
	Escribir "El precio total es $", p_inicial
FinFuncion

Funcion viaje_alumnos
	//12
	definir a,c_a Como Entero
	Definir bus Como Real
	bus = 4000
	Escribir "Ingrese el total de los alumnos: "; leer a// pido el total de alumnos
	si a >= 100 Entonces// evaluo
		c_a = 65// le asigno el valor por alumno
		bus = c_a * a// esto va ganar el bus
	SiNo
		si a<=99 & a>= 50 Entonces
			c_a =  70 //le asigno el valor por alumno
			bus = c_a * a// esto va ganar el bus
		SiNo
			si a<=49 & a>= 30 Entonces
				c_a =  951
				bus = c_a * a
			SiNo
				c_a = trunc(bus/a)// si es menor a 30 divido los 400 por la cantidad de alumnos
			FinSi
		FinSi
	FinSi
	Escribir "El precio por alumno es ",c_a
	Escribir "El precio de la renta del autobus es ", bus
FinFuncion

Funcion precio_km
	//13
	Definir km, cost_to,cost_pe Como Real
	Definir ti Como Caracter// ti es el tipo de bus
	Definir perso Como Entero
	
	Repetir//se repite hasta que ingese un valor correcto
		Escribir "Ingrese el tipo de bus: "; leer ti
		ti = Minusculas(ti)// transformar a Minusculas
		si ti <> "a" & ti <> "b" & ti <> "c" Entonces
			Escribir "Ingrese el tipo corecto"
		FinSi
	Mientras Que ti <> "a" & ti <> "b" & ti <> "c"
	
	Escribir "Ingrese la cantidad de personas: "; leer perso
	Escribir "Ingrese el total de km a recorrer: "; leer km
	si perso < 20 Entonces// si el numero es menor a 20, se cobra como si fuera 20
		perso = 20
	FinSi
	Segun ti Hacer
		"a":
			cost_pe = 2 * km// asigno el valor que cobro por kilometro
		"b":
			cost_pe = 2.5 * km
		"c":
			cost_pe = 3 * km
	FinSegun
	
	cost_to = cost_pe * perso
	
	Escribir "El costo total de la renta del bus es: $", cost_to
	Escribir "El costo total por persona es: $", cost_pe
FinFuncion

Funcion colas_pagar
	//14
	Definir cant Como Entero
	definir cost_u, cost_tot Como Real
	cost_u = 0.50
	Escribir  "Ingrese la cantidad de colas: "; leer cant
	
	si cant < 23 Entonces
		cost_u = 0.50 + (0.50*0.20)
	FinSi
	
	cost_tot = cost_u * cant
	
	Escribir "Cantidad a comprar: ", cant
	Escribir "Costo por unidad: ", cost_u
	Escribir "Base imponible: ", cost_tot
	Escribir "Iva 12%: ", cost_tot * 0.12
	Escribir "Costo total a pagar: ", cost_tot + (cost_tot * 0.12)
FinFuncion

Funcion Super_Promocion 
	//15
    Definir cantidad_comprada Como Entero
	Definir precio_original, descuento_inicial, total, descuento_adicional, valor_a_pagar Como Real
	// Ingresar la cantidad de productos y el precio original
	
    Escribir "Ingrese la cantidad de productos comprados:"
    Leer cantidad_comprada
    Escribir "Ingrese el precio original por producto:"
    Leer precio_original
	
    // Calcular el descuento inicial
    Si cantidad_comprada > 19 Entonces
        descuento_inicial = precio_original * 0.10
    Sino
        descuento_inicial = precio_original * 0.20
    FinSi
	
    // Calcular el total antes del descuento adicional
    total = cantidad_comprada * (precio_original - descuento_inicial)
	
    // Calcular el descuento adicional
    descuento_adicional = total * 0.05
	
    // Calcular el valor a pagar
    valor_a_pagar = total - descuento_adicional
	
    // Mostrar los resultados
    Escribir "Cantidad comprada:", cantidad_comprada
    Escribir "Precio original:", precio_original
    Escribir "Descuento inicial:", descuento_inicial
    Escribir "Total antes del descuento adicional:", total
    Escribir "Descuento adicional:", descuento_adicional
    Escribir "Valor a pagar:", valor_a_pagar
	
FinFuncion

Funcion Pares
//26
//Definimos una variable para almacenar el número actual.
definir numero Como Entero
numero = 0
// Usamos un bucle mientras para iterar desde 0 hasta 100.
Mientras numero <= 100 Hacer
	//  // Verificamos si el número actual es par (divisible por 2).
	Si numero MOD 2 = 0 Entonces
		// Si el número es par, lo imprimimos.
		Escribir numero
	FinSi
	//Incrementamos el número actual para pasar al siguiente.
	numero = numero + 1
FinMientras
FinFuncion

Funcion Suma_acumulada
	//27
	// Definimos las variables
    Definir contador, numero, suma Como Entero
	
    // Inicializar la suma en 0
    suma = 0
	
    // Usamos un bucle para ingresar y sumar 10 números
    Para contador = 1 Hasta 10 Hacer
        // Solicitamos al usuario que ingrese un número
        Escribir "Ingrese el número ", contador, ":"
        Leer numero
		
        // Sumamos el número ingresado al acumulador (suma)
        suma = suma + numero
    FinPara
	
    // Mostramos el resultado de la suma acumulada
    Escribir "La suma acumulada de los 10 números es:", suma
FinFuncion

Funcion Edad_Promedio
	//28
	// Definimos las variables
    Definir N, suma_edades, contador Como Entero
    Definir edad, edadpromedio Como Real
	
    // Inicializamos las variables
    N = 0
    suma_edades = 0
    contador = 1
	
    // Solicitamos al usuario que ingrese la cantidad de alumnos (N)
    Escribir "Ingrese la cantidad de alumnos (N):"
    Leer N
	
    // Usamos un bucle para ingresar las edades de los alumnos
    Mientras contador <= N Hacer
        // Solicitamos al usuario que ingrese la edad del alumno actual
        Escribir "Ingrese la edad del alumno ", contador, ":"
        Leer edad
		
        // Acumulamos las edades en la suma total
        suma_edades = suma_edades + edad
		
        // Incrementamos el contador para pasar al siguiente alumno
        contador = contador + 1
    FinMientras
	
    // Calculamos la edad promedio
    EdadPromedio = suma_edades/N
	
    // Mostramos la edad promedio del grupo
    Escribir "La edad promedio de los ", N, " alumnos es:", EdadPromedio
FinFuncion

Funcion Calcular_Sueldo
	//29
	// Definimos las variables
    Definir horas_por_dia, valor_por_hora, total_horas, sueldo_total Como Real
	
    // Inicializar variables
    total_horas = 0
    sueldo_total = 0
	
    // Usamos un bucle para ingresar las horas trabajadas durante 20 días
    Para dia = 1 Hasta 20 Hacer
        // Solicitamos al usuario que ingrese las horas trabajadas para el día actual
        Escribir "Ingrese las horas trabajadas para el día ", dia, ":"
        Leer horas_por_dia
		
        // Solicitamos al usuario que ingrese el valor por hora
        Escribir "Ingrese el valor por hora para el día ", dia, ":"
        Leer valor_por_hora
		
        // Calculamos las horas trabajadas para el día actual
        horas_trabajadas_dia = horas_por_dia * valor_por_hora
		
        // Acumulamos las horas trabajadas en el total
        total_horas = total_horas + horas_trabajadas_dia
    FinPara
	
    // Calculamos el sueldo total
    sueldo_total = total_horas
	
    // Mostramos el total de horas trabajadas y el sueldo total
    Escribir "Total de horas trabajadas en el mes:", total_horas, " horas"
    Escribir "Sueldo total a recibir:", sueldo_total, " dólares"
	
FinFuncion
Algoritmo sin_titulo
	//vini_cultores() //11
	//viaje_alumnos() //12
	//precio_km() //13
	//colas_pagar() //14
	//Super_Promocion() //15
	//Pares() //26
	//Suma_acumulada() //27
	//Edad_Promedio() //28
	Calcular_Sueldo() //29
FinAlgoritmo
