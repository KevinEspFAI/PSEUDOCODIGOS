Proceso SoporteAPymes
	//Primero, definimos las variables
	
	
	//Operaciones entre 2 precios
	REAL<-Precio1
	REAL<-Precio2
	REAL<-ResultadoPrecios
	
	//Operaciones con IVA de un producto
	TEXTO<-Producto1
	TEXTO<-Producto2
	REAL<-PrecioProducto
	REAL<-ResultadoParaIVA
	REAL<-IVA
	
	//Nombre de Usuario
	TEXTO<-NombreUsuario
	ENTERO<-ControladorUsuario
	ControladorUsuario<-0
	NombreUsuario<-""
	
	//Controladores
	ENTERO <- Controlador //Sirve para saber si luego de una operacion, se debe volver al Menu Principal
	ENTERO <- Instruccion //Define del Menu principal, la instrucción a ejecutar (del 1 a n)
	TEXTO <- Booleano //Elecciones de s/n
	ENTERO <- ControladorMenu
	
REPETIR
	//Definimos el menú principal
	Escribir ("")
	Escribir ("MENÚ PRINCIPAL - Programa de Soporte para PyMes")
	esperar 1 Segundos
	
	Si ControladorUsuario = 0 entonces
		Escribir ("Usuario no registrado aún.")
	SiNo
		Escribir ("Usuario: "), (NombreUsuario), (".")
	FinSi
	
	Esperar 2 segundos
	Escribir ("(Escriba una opción para ejecutar una acción):")
	Esperar 2 segundos
	Escribir (" ")
	Escribir ("1. Definir nombre de usuario.")
	Escribir ("2. Sumar 2 precios.")
	Escribir ("3. Restar 2 precios.")
	Escribir ("4. Calcular el IVA de un producto.")
	Escribir ("5. Salir.")
	LEER Instruccion
	
	//Definimos los controladores
	Controlador<-0
	Booleano <- ""
	ControladorMenu <- 0
	
	//Aquí se comienza a proceder con las opciones del menú
	Segun Instruccion Hacer
		1:
			Si ControladorUsuario = 1 entonces
				Escribir ("Usted ya posee un nombre de usuario, y es: "), (NombreUsuario)
				Esperar 2 segundos
			SiNo
				Escribir ("Ingrese su nombre de usuario:")
				LEER NombreUsuario
				Escribir ("Su nombre de usuario es: "), (NombreUsuario), (".")
				ControladorUsuario<-1
				Esperar 1 Segundos
			FinSi
			
			//Loop para preguntar si volver al MENU PRINCIPAL 
			Repetir
				esperar 1 segundos
				Escribir ("")
				Escribir (NombreUsuario), (", "), ("Desea volver al menú principal? Escriba ¨s¨ (para SI) o ¨n¨ (para NO).")
				Leer Booleano
				
				Si Booleano = "s" entonces
					ControladorMenu <- 1
					Controlador <- 0
				SiNo
					Si Booleano = "n" Entonces
						ControladorMenu <- 1
						Controlador <- 1
					SiNo
						
							
						Escribir (NombreUsuario), (", "), ("por favor ingrese 2 de las opciones dadas (Sí o No)")
						ControladorMenu <- 0
						
					FinSi
				FinSi
	Hasta que ControladorMenu = 1
			
		2:
			Escribir (NombreUsuario), (","), (" ingrese el nombre del 1° producto:")
			Leer Producto1
			Escribir ("Ahora ingrese su precio:")
			Leer Precio1
			Esperar 1 Segundos
			Escribir ("Ingrese el nombre del 2° producto:")
			Leer Producto2
			Escribir ("Por último, ingrese el precio del 2° producto:")
			Leer Precio2
			ResultadoPrecios<-Precio1+Precio2
			Escribir ("")
			Escribir (NombreUsuario), (", "),("El resultado de la suma de "), (Producto1), (" y "), (Producto2), (", es de:")
			Escribir ("$ "),(ResultadoPrecios)
			Controlador<-1
			//Loop para preguntar si volver al MENU PRINCIPAL
			Repetir
				esperar 1 segundos
				Escribir ("")
				Escribir (NombreUsuario), (", "), ("Desea volver al menú principal? Escriba ¨s¨ (para SI) o ¨n¨ (para NO).")
				Leer Booleano
				
				Si Booleano = "s" entonces
					ControladorMenu <- 1
					Controlador <- 0
				SiNo
					Si Booleano = "n" Entonces
						ControladorMenu <- 1
						Controlador <- 1
					SiNo
						
						
						Escribir (NombreUsuario), (", "), ("por favor ingrese 2 de las opciones dadas (Sí o No)")
						ControladorMenu <- 0
						
					FinSi
				FinSi
			Hasta que ControladorMenu = 1
			
		3:
			Escribir (NombreUsuario), (","), (" ingrese el nombre del 1° producto:")
			Leer Producto1
			Escribir ("Ahora ingrese su precio:")
			Leer Precio1
			Esperar 1 Segundos
			Escribir ("Ingrese el nombre del 2° producto:")
			Leer Producto2
			Escribir ("Por último, ingrese el precio del 2° producto:")
			Leer Precio2
			ResultadoPrecios<-Precio1-Precio2
			Escribir ("")
			Escribir (NombreUsuario), (", "),("El resultado de la resta de "), (Producto1), (" a "), (Producto2), (", es de:")
			Escribir ("$ "),(ResultadoPrecios)
			Controlador<-1
			//Loop para preguntar si volver al MENU PRINCIPAL
			Repetir
				esperar 1 segundos
				Escribir ("")
				Escribir (NombreUsuario), (", "), ("Desea volver al menú principal? Escriba ¨s¨ (para SI) o ¨n¨ (para NO).")
				Leer Booleano
				
				Si Booleano = "s" entonces
					ControladorMenu <- 1
					Controlador <- 0
				SiNo
					Si Booleano = "n" Entonces
						ControladorMenu <- 1
						Controlador <- 1
					SiNo
						
						
						Escribir (NombreUsuario), (", "), ("por favor ingrese 2 de las opciones dadas (Sí o No)")
						ControladorMenu <- 0
						
					FinSi
				FinSi
			Hasta que ControladorMenu = 1
			
		4:
			Escribir (NombreUsuario), (","),(" Ingrese el precio de un producto:")
			Leer PrecioProducto
			ResultadoParaIVA<-PrecioProducto*0.21
			Escribir (" El IVA de su producto ingresado es de:")
			Escribir ("$ "),(ResultadoParaIVA)
			Controlador<-1
			//Loop para preguntar si volver al MENU PRINCIPAL
			Repetir
				esperar 1 segundos
				Escribir ("")
				Escribir (NombreUsuario), (", "), ("Desea volver al menú principal? Escriba ¨s¨ (para SI) o ¨n¨ (para NO).")
				Leer Booleano
				
				Si Booleano = "s" entonces
					ControladorMenu <- 1
					Controlador <- 0
				SiNo
					Si Booleano = "n" Entonces
						ControladorMenu <- 1
						Controlador <- 1
					SiNo
						
						
						Escribir (NombreUsuario), (", "), ("por favor ingrese 2 de las opciones dadas (Sí o No)")
						ControladorMenu <- 0
						
					FinSi
				FinSi
			Hasta que ControladorMenu = 1
		5:
			Controlador<-1
		De Otro Modo:
			Escribir (NombreUsuario), (","),(" Por favor, ingrese una opción correspondienete al MENÚ PRINCIPAL:")
			Escribir (" ")
			Esperar 3 Segundos
	FinSegun
Hasta Que  Controlador=1
FinProceso
