# [Comedero Inteligente]

Este proyecto trata de crear un comedero inteligente que distribuya la comida en un determinado espacio horario, para la correcta alimentación de los animales domésticos. El mecanismo a utilizar contará de placas de presión, cables, un temporizador, sensores de volumen y puertas lógicas NOT. Lo primero que hará el comedero será comprobar que hora es, si está en el momento asignado para soltar la comida comprobará que la placa de presión no esté activada: Si la placa está activada no echará comida , ya que el comedero está lleno. Por el contrario, si la placa no está activada, rellenará el recipiente hasta que dicha placa se active.


## Integrantes del equipo


- Mario Sánchez Trigo @mariosanchezt
- Javier Romo Gil @Romoj21
- Javier Valdés González @javivaldees

## Objetivos del trabajo

[Lista de los objetivos que se persiguen con el trabajo propuesto.]

- Facilitar la vida del dueño del animal.
- Asegurar la correcta alimentación de dicho animal.

## Descripción detallada

El usuario se encontrará un comedero inteligente que le permitirá establecer horarios de comida a su gusto, también deberá asignar la raza del perro, para que el programa, le recomiende la comida acorde a su raza y peso.  

El sistema incorporará un sensor ubicado en el interior del recipiente de la comida. Su función será la de comprobar si el recipiente de la comida  está lleno o vacío. Sí cuando sea la hora de comer se detecta que el recipiente sigue lleno, no se servirá más comida. Sí el recipiente está vacío en el horario de comida, se servirá hasta volver a llenarse.
Sin embargo, el recipiente del agua se rellenará automáticamente a cualquier hora del día, siempre que esté vacío. El propio sistema avisará al usuario de cuándo debe rellenar los almacenes de comida y agua. 
Las magnitudes físicas que el sistema medirá son la ausencia de comida y agua.

Desde la aplicación del Pc introduciremos el peso y la raza del perro así como los horarios de comida para este.

## ESQUEMA MENÚ

TALLA DE PERRO
- Elección tamaño perro
- Se recomienda una dosis diaria en función de raza y peso.

CANTIDAD COMIDA
- Introducir cantidad (El usuario introduce la cantidad de comida)

HORARIO COMIDA
- El sistema ofrece 2 opciones y 2 subopciones de horarios. (El usuario escoge la que más le convenga)

ALMACÉN DE AGUA/COMIDA
- Aviso para rellenar. (Emitirá un pitido cuando este vacio)

## Identificación sensores, actuadores e indicadores

- Sensor de presion  Rp-c7.6-lt  x2
- Placa base de arduino elego uno R3
- Sensor de nivel de liquido sin contacto gravity  
- HC-SR04 (Sensor de ultrasonidos) 
 
