# [Blackjack y más] :: twIA_2021-blackjack

[Hola! Nuestro trabajo consiste en crear varios juegos de cartas, poder apostar una cantidad de fichas y poder jugar hasta cuatro 
jugadores a la vez. Además, diseñaremos una app para que cada persona pueda jugar desde su móvil de manera independiente.]

## Integrantes del equipo

- Alberto López Ramos @albertolopezramos
- Juan Ignacio Martín Moreno @juanignacio-martin
- Jesús Pacheco Alonso @jesuspachecoalonso
- Gregorio Marianini Ríos

## Objetivos del trabajo

- Crear uno o más juegos de cartas programados con C++.
- Crear una app donde se visualicen las cartas del usuario.
- Aplicar conocimientos de estadística para crear una máquina que calcule cuál es la mejor jugada.
\newpage

# Brazo Robotico controlado por guante :: twIA_2021-brazorobot

Nuestra idea de proyecto es crear un brazo robótico capaz de ser controlado por un guante, dicho guante será diseñado y programado por nosotros. Su mecanismo, consistirá en la lectura de nuestra mano, a partir de la cual el brazo se moverá de una forma u otra en función de la posición de nuestros dedos. Para ello, utilizaremos y programaremos en distintos programas informáticos como C++ y Arduino.

## Integrantes del equipo

1. David Pinto Llorente-davidpintollorente 

2. Javier Lerin Alonso-JavierLerinAlonso

3. Tobias Francisco kosanich-tobiaskos

4. Alvaro Lopez Villarroel-AlvaroLVillarroel

5. Eunchan kang-dinner123

## Objetivos del trabajo

1. Diseño y desarrollo de un guante electrónico, capaz de dirigir las funciones de un brazo robótico.
2. Desarrollar y programar un programa funcional (en C) que permita utilizar dicho guante como un controlador del brazo.
3. Aplicar el uso de sensores y hardwares que faciliten al mecanismo y funcionamiento del guante, a través de programas como Arduino.   

## Objetivos

El brazo robótico controlado por un guante, se inspira en los brazos automatizados utilizados en las industrias. Nuestro objetivo con este proyecto es crear un brazo que sea capaz de responder a los movimientos de nuestra mano. Para ello, diseñaremos nosotros mismos un guante que se adapte a nuestra mano. Este guante estará construido por distintos hardwares, como cables, sensores... El software que vamos a utilizar es C++ y Arduino. El guante estará conectado al brazo robótico via bluetooth, lo que será más fácil para el usuario. El brazo se moverá de forma que al realizar un movimiento vertical, horizontal... con nuestros dedos, las articulaciones del brazo también se muevan respecto al movimiento realizado por el usuario. Para finalizar someteremos a nuestro brazo robótico a una prueba. Esta prueba consistirá en saber si nuestro brazo es capaz o no, de mover y coger objetos de forma eficiente.

## Movimiento del brazo
1. Pinzas:
La pinza es controlada con una resistencia flexible en el dedo índice. Si doblamos este dedo hasta la mitad provocaremos que las pinzas de brazo robot vayan cerrandose pero si se dobla del todo hará que las pinzas de abran.
2. Muñeca:
La muñeca es controlada con una resistencia flexible en el dedo corazón. Doblar este dedo hasta la mitad provocará que la muñeca del robot baje, doblarlo del todo hará que este  suba.
3. Codo:
El codo es controlado con un acelerómetro. Girar el dorso de la mano hacia arriba o hacia abajo mueve el codo del robot en la dirección respectiva.
4. Hombro:
Controlado por un acelerómetro girar el dorso de la mano hacia la derecha o hacia la izquierda mueve el hombro en la dicección respectiva. 
5. Base:
También controlado por un acelerómetro muy parecido al hombro o el codo. Girar el dorso de la mano hacia la derecha o izquierda mientras la palma se mantiene en hacia arriba mueva la base del robot hacia la derecha o hacia la izquierda. 

Cada una de estas partes serán controladas con el uso de un guante que controlaremos manualmente con nuestra mano.
Dependiendo de la extremidad que movamos de la mano, se interactuará con las distintas partes de nuestro brazo robótico.

## Identificador de sensores y actuadores

ACTUADORES

El actuador del que vamos a hacer uso para que el brazo robot se mueva es el servomotor. El servo es un accionador muy común que permite el desplazamiento en un rango de movimiento de 180 grados. La ventaja del servo reside en esta característica pues se le indica directamente el ángulo deseado. Internamente el servo suele contar con un mecanismo reductor que proporciona un alto par y una gran precisión. Sin embargo; la velocidad de actuación o de giro son pequeñas. Los servos admiten una tensión de entre 4,8 y 7,2 voltios, aunque lo ideal son 6 voltios. Con ellos podremos controlar la posición.

SENSORES

Por otro lado, usaremos acelerómetros, que son dispositivos que miden la aceleración (la variación de la velocidad respecto del tiempo). Los acelerómetros cuentan con una masa suspendida en su interior mediante muelles. De esta forma, al aplicar un movimiento, la masa se mueve y provoca la elongación y la contracción de los muelles. El desplazamiento de la masa interna permite determinar la aceleración. Los acelerómetros son capaces de medir en los tres ejes (x, y, z).

Emplearemos botones o pulsadores, sensores de lo más simple pues solo tienen dos estados. Estos detectan si están siendo pulsados (se ejerce presión sobre ellos) o si no lo están, de manera que el programa pueda actuar en consecuencia. 

Por último, una resistencia flexible. Este sensor, aumenta su resistencia al ser flexionado. Cuando se dobla el sustrato del sensor produce una salida de resistencia en relación con el radio de curvatura. El sensor flex, con una flexión de 0° dará la resistencia de 10K y con una flexión de 90° dará entre 30 a 40 K ohmios.
\newpage

# [Papelera] :: twIA_2021-papelera

[Descripción breve del proyecto a realizar (2-3 frases).]

Programar y realizar el mecanismo de una papelera automática que se abra mediante un pulsador, contabilizando el número de veces que esta se abre y compactando 
el contenido cuando dicho contador llegue a un determinado número.

## Integrantes del equipo

David J. dos Santos dos Reis (David2Santos)
Raquel Clemente Bastante (raquelclementebastante)
Daniel de la Cruz Redondo (danicrured20)
Carlos Bravo Salas(cbravosa)
Alvaro Chillari Sanchez (AlvaroChS)
[Nombres, apellidos, y usuario GitHub de los( integrantes del equipo.]

## Objetivos del trabajo

[Lista de los objetivos que se persiguen con el trabajo propuesto.]

Cada integrante del grupo tendrá una función, bien sea programando el mecansimo de la papelera o realizando el montaje del hardware, ya que no todos los integrantes disponen 
de los elementos para realizar el montaje.
Los materiales a utilizar son:
- Pulsador
- Caja de zapatos (papelera)
- Motores (servomotor)
- Placa de madera
- Placa de arduino
Procedimiento:
Inicialmente colocaremos el servomotor en el interior de la caja de zapatos. El servomotor tendrá integrada en su  parte rotativa unas helices. El servomotor se activara mediante el pulsador, el cual una vez accionado, producira un giro de 90 grados en el servomotor, permitiendo la apertura de la papelera. Una vez depositada la basura la papelera se cerrará y el contador pasará a tener el valor "1". Este proceso se repetirá hasta el número el cual a determinado el usuario que se llene la papelera. A partir de este momento se accionará la placa de madera, integrada en la papelera con el objetivo de compactar la basura aumentando la capacidad de la papelera. Además se integrará una luz led que se encenderá cuando se abra la papelera y se apagará cuando se cierre.


\newpage

# CarMap - Chikito :: twIA_2021-carmap_chikito

Robot inalámbrico por Bluetooth que se conecta al ordenador. Con un teclado de macros o el mismo del ordenador se puede manejar. Además, el ordenador tiene en cuenta la trayectoria del robot para poder automatizar su vuelta. Dicha trayectoria se muestra en la pantalla, bien sea en forma del vector posición y rotación o mediante una curva.

## Integrantes del equipo

- Echedey Luis Álvarez. @echedey-luis-alvarez
- Fernando Moreno Santa Cruz. @Fer014
- Amélie Nader Prieto. @amelie-nader-prieto
- Luis Fernando Rubio Regojo. @luisrubio27
- Lucas Sánchez Solera. @luc-39
- Celia Torrecillas Barba. @Celia-t22

## Objetivos del trabajo

### Objetivos principales y mínimos:
- [] Crear un teclado de macros que simule un teclado usual.
- [] Hacer un pequeño robot inalámbrico por Bluetooth.
	- [] Capaz de moverse hacia delante y hacia atrás, y rotar sobre sí mismo. Se usarán drivers con motores DC.
- [] Hacer un programa en un ordenador que sea el intermediario entre cualquier método de entrada, como el teclado de macros, y el robot.
	- [] Estimar la posición del robot en cada momento según los comandos que envíe el programa.
	- [] Mostrar en alguna forma de interfaz la ubicación y rotación del robot.

### Objetivos secundarios, mejoras:
- [] Control de rotación de cada rueda mediante optoacopladores o pares LED IR - Sensor IR.
- [] Algoritmo para que el robot pueda volver sobre sí mismo
- [] Sistema para guardar posición, rotación, velocidad, (template de un robot) en un fichero.

## TODO:
- [] Wiki
- [] Crear logo
- [] Crear diagramas de flujo
\newpage

# Conecta_4 :: twIA_2021-conecta_4

Se programará el conocido juego Conecta4 en forma de videojuego siendo el tablero un conjunto de luces LED y utilizando un mando original para controlar las acciones. Se dispondrá de un menú de juego con la posibilidad de guardar la partida para continuarla más tarde y disponer del nombre del jugador y las puntuaciones más altas.

## Integrantes del equipo 

Eduardo Luque López (eduardo-luque) --- 
Gabriel Rüscher Pascual (Gabriel-Rpascual) --- 
Iris Martínez Pérez (Iris821) --- 
Ismael Torrijano Pedroche (ismael45) --- 
Javier Nicolao Gómez (JaviNico) --- 
Lucía Pardo Hermosa (lucia-phermosa)

## Objetivos del trabajo

-Menú de juego-
-Tablero de luces LED-
-"IA"-
-Mando sensor IR/Arduino
-Opción de guardar partidas para poder continuar una partida en otro momento-
-Sonido?
-Juego secundario: Buscaminas (si da tiempo)

-División trabajo(no significa que uno de un departamento no ayude al otro, división a grandes rasgos):
[Software_Hardware_división.pdf](https://github.com/aigora/twIA_2021-conecta_4/files/6331153/Software_Hardware_division.pdf)

-Puntuaciones más altas y nombre de los jugadores:
[PuntuaciónyClasificación.pdf](https://github.com/aigora/twIA_2021-conecta_4/files/6331154/PuntuacionyClasificacion.pdf)

## FUNCIONAMIENTO IA

-La IA en este programa primero va a analizar si se puede colocar una ficha encima de otras tres que haya colocado previamente, en caso de que esto no sea posible, comprobará si puede evitar una victoria vertical del jugador. En caso de que no sea posible, va a analizar si se puede hacer encima de dos ,en caso de que esto no sea posible, encima de una, y en caso de que tampoco se pueda va ha analizar si existe libre algún hueco en la primera fila a ocupar. En caso de que no vea posible hacer ninguna de estas jugadas la IA colocará una ficha aleatoriamente.
\newpage

# E-whistle :: twIA_2021-e-whistle

Nuestro proyecto consiste en un dispositivo capaz de captar la frecuencia en la que silba un individuo y posteriormente indicar con que nota musical y con que frecuencia se ha emitido.

## Integrantes de grupo
```
1.Pablo Crespo Castellanos         Pablo-crespo02
```
```
2.Daniel Fidalgo Millán            Fidalg02
```
```
3.Gonzalo Castro Serrano           Gonzalo7193
```
```
4.Sergio Ballesteros Palomo        Sergius842
```
```
5.César Bobadilla Sojo             Cesar-BS
```
## Objetivos del trabajo
Este proyecto tiene un propósito simple pero ambicioso, captar un sonido, procesar su frecuencia y devolver el valor de la misma junto con una nota musical si correspondiese.
Así, podríamos crear partituras a partir de una melodía silbada. A pesar de parecer sencillo tiene como meta ser un programa que ayude a gente con conocimientos músicales reducidos a comprender mejor la música e incluso crear sus propias composiciones.

## Hardware 
Los elementos funcionales requeridos son, un microfono que capte la frecuencia del sonido y un circuito programado para procesarla.

## Software
Se programará en C un circuito Arduino que realice las funciones explicadas.
La principal libreria de C externa es "Modus - C++ Music Library".

## Magnitudes físicas y datos de entrada
En este caso coinciden, el dato a analizar por el programa es la frecuencia del sonido que se quiera, que será recogido por un micrófono. 
El modelo del micrófono:
```
ky038
```
## Datos de salida 

Se mostrará la frecuencia del sonido captado junto con la nota musical correspondiente en una partitura de máximo 10 notas, cabe resaltar que el programa no leera las frecuencias si estas se superponen ni la duración de las mismas.

## Bibliografía
```
https://aprendiendoarduino.wordpress.com/2018/10/16/modulo-microfono-arduino/
```
```
http://openaccess.uoc.edu/webapps/o2/bitstream/10609/81325/6/mvalmirantearenaTFG0618memoria.pdf
```
\newpage

# CLASIFICADOR DE COLORES :: twIA_2021-fabrica_de_colorines

Haremos un programa con Arduino donde diferenciara los objetos por colores.

## Integrantes del equipo

  Andriana,Dovhanych, @andrianadovhanych
	
  Santiago, García-Cubillana, @SantiagoGarCubCarr
  
  Remi,garcia, @remigg
  
	
  Sara, Aparicio, @SaraAparicio22
  
	
 Elena, Diez, @elenadiezdeantonio
  
	
 Sergio,Grande, Hortigüela: @SergioGH-byte


## Objetivos del trabajo

El objetivo es la clasificación, de un objeto a determinar, por colores desechando


los no reguistrados y pudiendo elejir la cantidad de ojetos que se quiera de un color 

queremos que sea util para la fabricacion a gran escala.
## WORD 
[proyecto informática.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6326051/proyecto.informatica.780.pdf)

## DISEÑO DEL SISTEMA
[Diseño de sistema.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6370566/Diseno.de.sistema.pdf)

[MEDIDAS.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6370568/MEDIDAS.pdf)


## Servo Tolva
[ServoTolva.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6366650/ServoTolva.pdf)

## Versión actualizada del programa de selección de colores-cantidad
[Programa Selección de colores.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6372043/Programa.Seleccion.de.colores.pdf)

## Programa del sensor de colores (no definitivo)
[sensor de color no definitivo.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6432837/sensor.de.color.no.definitivo.pdf)

## Programa motro de la cinta principal

[motor_cinta_Arduino.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6448091/motor_cinta_Arduino.pdf)

### base de arduino
[arduino_base.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6448466/arduino_base.pdf)

###conjunto pistones, tolva y cinta principal
[conjunto_pistones_tolva_cinta.pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6460718/conjunto_pistones_tolva_cinta.pdf)

\newpage

# [Título del trabajo] :: twIA_2021-grupo-banco

Interfaz de un banco en el que se iniciará sesión en cuentas creadas previamente, para así consultar el saldo y ahorros, realizar transacciones entre cuentas y mantener un registro de ellas, y más ideas que se nos vayan ocurriendo. 

## Integrantes del equipo
jaime bustos valera     jaime0010
Pedro Cabañas Laguna pedrooo8
Víctor Barrera López victorbarreralopez
Ana Arroyo Benítez AnaArroyo55130
Jorge de Rivas Martínez Jorge-88
Pedro Gabriel Gallardo Lozano pedrogallardolozano
## Objetivos del trabajo

- Crear una interfaz intuitiva para la creación de cuentas y el acceso a las mismas.
- Que cada cuenta tenga un usuario y contraseña propios, y sólo se permita el acceso a las mismas si la contraseña introducida es la correcta.
- La creación de un menú en el que se le muestre al usuario distintas opciones dentro de su cuenta (transferencias, etcétera).
- La utilización de ficheros para la escritura y lectura de saldos, y la modificación de los mismos cuando se quieran realizar transacciones entre cuentas.
- La utilización de funciones para la estructuración del código.
- Hacer uso de la mayoría o todo el temario de la asignatura, incluídos vectores, cadenas, estructuras y/o punteros.
- Que todos los miembros del grupo contribuyan en el proyecto.
- Que, a ser posible, se propongan nuevas ideas y se añadan más funciones al banco.
\newpage

## Proyecto Hundir La Flota :: twIA_2021-hundir_laflota

A través de elementos de hardware, principalmente una panatlla led y un programa asociado con IA, reproduciremos el juego de Hundir la Flota.

## Integrantes del equipo

-Raúl Granadero Uceda @Raul-Granadero
-Iker Giraldez Fernández 
-Mario Gómez-Sánchez Celemín
-Manuel Gutiérrez Huerta
-Diego González Zabalza

## Objetivos del trabajo

Queremos establecer un programa con IA que sea capaz de funcionar correctamente. Además de elaborar un programa adecuado con sus salidas hardware de tal manera que no solo sea algo visual en una pantalla sino que sea interactivo por parte del usuario y por tanto también tenga fin lúdico y no solo didáctico.
\newpage

# Juego Ahorcado :: twIA_2021-info


## Integrantes del equipo

Marcos Simón Romay @marcossssss

Carlos Loarte Hernández @loarte

María Castro De la Villa @mariacdl

## Objetivos del trabajo

El programa que vamos a realizar trata sobre el juego del ahoracdo, el cual realizaremos entre los tres integrantes. 
En primer lugar, aplicaremos al programa una asignación dinámica de memoria, y comenzaremos con el desarrollo del programa. Asímismo, añadiremos unas funciones para que una vez vayas a comenzar el juego, puedas elegir entre unas palabras predeterminadas, o elegir tu mismo la categoría y la palabra con la que quieres jugar. Para esto, crearemos un menú en el que podrás ir seleccionando tanto la categoría, como las palabras aleatorias o elegidas por uno mismo. Por último, el programa descargará a un fichero la partida, hayas ganado o no.
Para diseñar y desarrollar este programa vamos a utilizar el lenguaje C ++ que realice todas las indicaciones previamente programadas, y cumpliendo con todos los requisitos para realizar el proyecto. Además de ello, utilizaremos herramientas como Arduino, que dependiendo de si se gana la partida o el resultado es una derrota, la luz se encenderá con mayor intensidad o menor.
\newpage

# Jardin automatizado :: twIA_2021-jardin_automatizado

Trataremos de medir y controlar la temperatura, humedad... de un pequeño jardín.

## Integrantes del equipo

Luis Vicente Gordón---@LuisVicenteGordon

Javier Monrió García---@javiermonrio

Francisco Martín Cuscurita---@Franxcus

## Objetivos del trabajo

Medir y controlar temperatura, humedad, la luz, controlar el riego mediante riego automatico e indicar cuando las condiciones no sean optimas, por ejemplo demasiada temperatura.
\newpage

juego del pong :: twIA_2021-juego-del-pong
==================

*   [en que consiste](#en-que-consiste)
*   [integrantes del equipo](#Integrantes-del-equipo)
*   [objetivos del trabajo](#Objetivos-del-trabajo)
*   [dinamica de la aplicacion](#Dinámica-de-la-aplicación)
    *   [iniciar la partida](#Opción-1-Iniciar-partida)
    *   [reanudar/pausar la partida](#Opción-2-Pausar/reanudar-partida)
    *   [mostrar puntacion](#Opción-3–Mostrar-puntuación ) 
    *   [iniciar la partida](#Opción-1-Iniciar-partida)
*   [Identificación sensores y actuadores](#Identificación-sensores-y-actuadores)  
    *   [Medida de la distancia -Sensor ultrasonidos](#Medida-de-la-distancia---Sensor-ultrasonidos-HC-SR04) 
    *   [comobfunciona un sensor ultrasonidos](#CÓMO-FUNCIONA-UN-SENSOR-DE-ULTRASONIDOS)
* * *

## en que consiste ## 
Crear el juego del Pong en el que el movimiento de las raquetas sea controlado por sensores ultrasonidos.

## *Integrantes del equipo* ##

Javier Alonso Geijo (Usuario de GitHub(javieralonso1)),
Alberto Cámara López (Usuario de GitHub(AlbertoCL22)),
Carlos García López-Corona,
Sergio Cantalejo Villasante (Usuario de GitHub(SergioCantalejoVillasante)) y 
Pablo García de Lucas (Usuario de GitHub(PabloGarciadeLucas))

## Objetivos del trabajo

Aprender a programar en C++. Aprender a convertir el lenguaje de C++ a otros lenguajes (en este caso Arduino) y viceversa. Aprender a usar y programar sensores como en este caso los ultrasonidos.
JUEGO DEL PONG 
## Objetivo
Diseñar y desarrollar una aplicación en lenguaje C con el cual podamos jugar al pong mediante unos sensores de ultrasonidos.
Especificaciones del juego
Pong (o Tele-Pong) fue un videojuego de la primera generación de videoconsolas publicado por Atari, creado por Nolan Bushnell y lanzado el 29 de noviembre de 1972. Pong está basado en el deporte de tenis de mesa (o ping pong). La palabra Pong es una marca registrada por Atari Interactive, mientras que la palabra genérica «pong» es usada para describir el género de videojuegos «bate y bola». La popularidad de Pong dio lugar a una demanda de infracción de patentes y ganada por parte de los fabricantes de Magnavox Odyssey, que poseía un juego similar. Es un juego de deportes en dos dimensiones que simula un tenis de mesa. El jugador controla en el juego una paleta moviéndola verticalmente en la parte izquierda de la pantalla, y puede competir tanto contra un oponente controlado por computadora, como con otro jugador humano que controla una segunda paleta en la parte opuesta. Los jugadores pueden usar las paletas para pegarle a la pelota hacia un lado u otro. El objetivo consiste en que uno de los jugadores consiga más puntos que el oponente al finalizar el juego. Estos puntos se obtienen cuando el jugador adversario falla al devolver la pelota.

###### Dinámica de la aplicación


menú | 
------------ | 
1-Un jugador | 
2-Dos jugadores |
3-Cerrar juego  | 


## * _Opción 1 - Un jugador_
 Modo de práctica a modo de frontón.
 Para este modo sólo es necesario el ultrasonido del jugador 1.
 El jugador empieza con 7 vidas, cada vez que le marcan gol pierde una vida, así hasta quedarse con ninguna.
 El objetivo de este modo es dar el máximo número de veces al muro de la derecha para perfeccionar tus habilidades.
 Para este modo de juego se ha creado un fichero de texto "marcadores.txt", gracias a esto podrás conservar tu mejor puntuación de una partida a otra e intentar superarte.

## * _Opción 2 - Dos jugadores_
El clásico juego del pong para dos jugadores locales.
Para este modo cada jugador deberá usar un ultrasonido.
El objetivo de este modo es llegar a 7 puntos, el primero que lo consiga ganará la partida.
Debajo del terreno de juego aparecerá un marcador en el cual se mostrará la puntuación, y si vas ganando aparecerá una flecha amarilla en tu respectivo lugar.

## * _Opción 3 – Cerrar juego_
Con esta opción se cierra el programa.


 ## Identificación sensores y actuadores
Para el trabajo precisaremos de sensores de ultrasonidos para controlar “las raquetas”, estos sensores se encontrarán en un circuito montado en Arduino que deberá estar conectado durante la ejecución del programa para que funcione adecuadamente.
Para ver el montaje del Arduino, dirígete al esquema que se encuentra al principio del proyecto de GitHub.
En caso de error durante la ejecucuión del programa le hemos asignado el puerto "COM5".

## Medida de la distancia - Sensor ultrasonidos HC-SR04
Queremos controlar las raquetas mediante los ultrasonidos, es decir, de forma que según movamos la mano estas se muevan hacia arriba o abajo.
Un sensor de ultra sonidos es un dispositivo para medir distancias. Su funcionamiento se basa en el envío de un pulso de alta frecuencia, no audible por el ser humano. Este pulso rebota en los objetos cercanos y es reflejado hacia el sensor, que dispone de un micrófono adecuado para esa frecuencia.
Midiendo el tiempo entre pulsos, conociendo la velocidad del sonido, podemos estimar la distancia del objeto contra cuya superficie impacto el impulso de ultrasonidos
Los sensores de ultrasonidos son sensores baratos, y sencillos de usar. El rango de medición teórico del sensor HC-SR04 es de 2cm a 400 cm, con una resolución de 0.3cm. En la práctica, sin embargo, el rango de medición real es mucho más limitado, en torno a 20cm a 2 metros.
Los sensores de ultrasonidos son sensores de baja precisión. La orientación de la superficie a medir puede provocar que la onda se refleje, falseando la medición. Además, no resultan adecuados en entornos con gran número de objetos, dado que el sonido rebota en las superficies generando ecos y falsas mediciones. Tampoco son apropiados para el funcionamiento en el exterior y al aire libre.
Pese a esta baja precisión, que impide conocer con precisión la distancia a un objeto, los sensores de ultrasonidos son ampliamente empleados. En robótica es habitual montar uno o varios de estos sensores, por ejemplo, para detección de obstáculos, determinar la posición del robot, crear mapas de entorno, o resolver laberintos. En aplicaciones en que se requiera una precisión superior en la medición de la distancia, suelen acompañarse de medidores de distancia por infrarrojos y sensores ópticos.

## ¿Cómo funciona un sensor de ultrasonidos?
El sensor se basa simplemente en medir el tiempo entre el envío y la recepción de un pulso sonoro. Sabemos que la velocidad del sonido es 343 m/s en condiciones de temperatura 20 ºC, 50% de humedad, presión atmosférica a nivel del mar.
El sonido tarda 29,2 microsegundos en recorrer un centímetro.
El motivo de divir por dos el tiempo (además de la velociad del sonido en las unidades apropiadas, que hemos calculado antes) es porque hemos medido el tiempo que tarda el pulso en ir y volver, por lo que la distancia recorrida por el pulso es el doble de la que queremos medir.
Para activar el sensor necesitamos generar un pulso eléctrico en el pin Trigger (disparador) de al menos 10us. Previamente, pondremos el pin a Low durante 4us para asegurar un disparo limpio.
Posteriormente usamos la función "pulseIn" para obtener el tiempo requerido por el pulso para volver al sensor. Finalmente, convertirmos el tiempo en distancia mediante la ecuación correspondiente.
Observar que intentamos emplear siempre aritmética de enteros, evitando usar números en coma flotante. Esto es debido a que las operaciones en coma flotante ralentizan mucho el procesador, y suponen cargar un gran número de librerías en memoria.
Fuente: https://www.luisllamas.es/medir-distancia-con-arduino-y-sensor-de-ultrasonidos-hc-sr04/


El principal inconveniente que encontramos es que la lectura de distancias implica bloquear la ejecución del programa mientras esta se lleva a cabo impidiendo que la aplicación realice acciones adicionales mientras espera la medida, causa por la que nos hemos visto limitados a la hora de implementar opciones para pausar o reiniciar la partida una vez empezada. 
Cada sensor requiere dos pines del microcontrolador (Echo y Trigger).
La distancia recibida por el sensor de ultrasonidos 1 viene dada en cm y es la variabe "cm", la distancia recibida por el segundo también viene dada en cm y es la variable "cm2".


\newpage

## ARDUINO LEDS :: twIA_2021-lector_de_textos
Este proyecto trata sobre una placa base Arduino capaz de apagar y encender luces Led según sean demandado por el usuario. 
Consta de cinco funciones en relación al apagado y encendido y un fin que es la traducción de palabras al alfabeto Morse. 

## INTEGRANTES DEL EQUIPO 

Cristina Navarro Bados (Cnbados5580)
Almudena Murillo Martin-Asin (almumurillo)
Alejandro Palomo de la Peña (alejandro55393)
Monica Sacristán Sanchez(monicasacristans)
Dani Sato Leandro 
Pablo Rosario Rúas (Pabloroosario)

## Objetivos del trabajo

Nuestro principal objetivo es aprender a programar desde cero. 
Para ello aprenderemos a utilizar sensores y actuadores que nos harán más facil la realización de la parte física del programa.

\newpage

# LPS - Localizador Ultrasónico :: twIA_2021-localizador-ultrasonidos

El LPS o Localizador Ultrasónico es un sistema de posicionamiento local de objetos dentro de un espacio cerrado, através de la utilización
de diferentes sensores ultrasonidos, gracias a los cuales conseguiremos medir varias distancias al objeto desde diferentes posiciones
dentro del espacio cerrado, y asi situarlo dentro de este. Este sistema podría parecerse a un GPS convencional para interiores.

## Integrantes del equipo
<strong>Nombre            -            Usuario</strong>
<br />Antonio García Montes - antoniogmontes
<br />Joaquín Gabriel Huirse - jhuirse
<br />Jorge Riveiro - j-riveiro
<br />Sergio Rodriguez - Srsanz
<br />Javier Gasco - j-gasco


## Objetivo:
Desarrollar un dispositivo que mediante sensores y algoritmos detecte su posición en un recinto cerrado, parecido a un GPS rudimentario.
Mediante la realización un trabajo cooperativo aplicar los conocimientos de computación aprendios y familiarizarnos con ellos, y a su
vez aprender nuevas utilidades y herramientas para realizar sistemas o aparatos complejos. Un ejemplo de ello sería la implementación 
de placas de Arduino o la incorporación de sistemas externos como los sensores ultrasonidos.
Para ello planearemos los pasos a seguir y escribiremos el codigo necesario para el relizar el sistema o aparato propuesto.

## Material necesario:
- Sensores HC-SR04; estos sensores de ultrasonidos serán los encargados de la medición de la distancia del objeto que deseemos medir.
Utilizaremos 8. Los sensores de ultrasonidos miden la distancia mediante el uso de ondas ultrasónicas, su cabezal emite esta onda y recibe
la onda reflejada que retorna desde el objeto, mide la distancia al objeto contando el tiempo entre la emisión y la recepción. 
- Placa de arduino: es una plataforma de desarrollo basada en una placa electrónica de hardware libre que incorpora un microcontrolador
re-programable y una serie de pines hembra. Estos permiten establecer conexiones entre el microcontrolador y los diferentes sensores y
actuadores de una manera muy sencilla. 
- Plantilla: utilizaremos esta plantilla, para una vez que dispongamos de las medidas podamos ubicar de la manera mas precisa posible donde
se encuentrael objeto que deseemos situar, esta plantilla de 30x32 cm se divide en una cuadricula 7x4 de forma que los sensores abarquen
toda esta plantilla. 

## Funcionamiento de la aplicación:
- Reconocimineto del tablero.
- Colocación del dispositivo.
- Medición de la distancia.
- Cálculo de la posición.

## Primera etapa: Reconocimiento del tablero
Se realizará en un periodo previo al ejercicio. Se colocará el dispositivo con sus 8 sensores ultrasonidos en las distintas posiciones del 
tablero, y se realizará una primera medición de las distancias que recogen los sensores, que se almacenarán en un fichero. En esta primera
medición no se situará ningún objeto dentro del tablero y únicamente servirá para delimitar el recinto en el que se encuentra el dispositivo.
De esta manera en las siguientes etapas nos será más fácil situar el objeto, puesto que podremos descartar distintas distancias que se encuantran
fuera de la cuadrícula y que por lo tanto no corresponden al objeto, sino a las paredes o límites del espacio en el que hemos situado el dispositivo.

## Segunda etapa: Colocación del objeto.
Se coloca el objeto, inmóvil, dentro de una de las casillas de la plantilla 7x4, en la posición cuya localización se quiere conocer.
Este objeto deberá ser de un tamaño pequeño, puesto que la cuadrícula que se abraca es de 30x32 cm y cada casilla de alrededor de 4x5 cm. 
Además el objeto es preferible que se coloque en el interior de una de las casillas, y no, por ejemplo entre varias, puesto que debido la amplitud
y forma de los sensores, en algunas ocasiones, el resultado del posicionamiento del objeto podría tener una pequeña diferencia con respecto de la 
distancia real a la que se encuentra.

## Tercera etapa: Medición de la distancia.
Los cabezales de los 8 sensores ultrasonidos emitirán ondas ultrasonicas, que chocarán contra el objeto y retornarán hasta ellos mismos.
El tiempo que tarda la onda en desde que sale del cabezal hasta que vuelve será cronometrado y almacenado en un fichero, más tarde,
una vez se tiene ese tiempo y sabiendose la velocidad de las ondas, podremos calcular la distancia en cm que hay desde el sensor hasta
el objeto. Los sensores están colocados de tal manera que a cada casilla del tablero únicamente le llegan las ondas de dos de los sensores,
pero sin embargo a cada punto del tablero solo uno, puesto que los sensores solo cuentan con una amplitud de 15 grados, por lo que de todas
las distancias que devuelvan solo una estará dentro de los límites del tablero y las demás se podrán descartar.

## Cuarta etapa: Cálculo de la posición.
Una vez recibidas las distancias se analizará la que se encuentra dentro de los límites de la cuadrícula, primero se observará de que sensor
viene esta distancia, determinando de esta manera en que columna se encuentra el objeto, después analizando el tamaño de la distancia se podrá
determinar la fila en la que se encuentra. Por último, se imprimirá en la pantalla en que posición de la plantilla se encuentra el objeto.
Debido a que los sensores describen ondas, con una amblitud de 15 grados, existen ciertos luegares dentro de la cuadrícula entre las diferentes
casillas donde podría haber un cierto error, por lo que si el objeto se encuenta entre dos filas o muy próximo a la unión que hay entre estas,
el programa no determinará exactamente en que casilla está el objeto, sino que imprimirá que este se encuentra entre esas dos casillas.
\newpage

# Multímetro digital. :: twIA_2021-multimetro_digital

Nuestro multimetro será capaz de medir tensiones y corrientes a través del arduino, pasará los datos al ordenador y mediante un codigo de Visual guardar los datos en un fichero.

## Integrantes del equipo

Alejandro Mayor Escalada, @amayore .  
Roberto Vázquez Magdaleno.  
Inés Rico Peng.  
Raquel Roca Pereira.  
Gema Sánchez Sánchez, @gema-upm .  
Iria Touriño Villanueva.  

## Objetivos del trabajo

Diseñar y desarrollar un multímetro capaz de hacer lecturas de corriente, voltaje y resistencia de cualquier circuito o elemento (resistencias), pasar las lecturas al ordenador desde Visual Studio y que se queden guardadas en un fichero.

## Sensores y actuadores

### Convertidor analógico-digital  
### Pantalla LCD  
### Sensor de corriente ACS712  

El ACS712 es un sensor de corriente tanto alterna como continua, que permite medir la intensidad eléctrica que atraviesa un conductor. Podemos emplear el ACS712 junto con un procesador como Arduino para medir la intensidad o potencia consumida por una carga.  
Internamente el ACS712 consiste en un sensor hall de precisión y bajo offset junto con un canal de conducción localizado cerca de la superficie del integrado. Cuando la corriente fluye por el canal de cobre genera un campo magnético que es detectado por el sensor Hall y es convertido en una tensión.  
La salida del sensor es una tensión proporcional a la corriente, y altamente independiente de la temperatura. El sensor viene calibrado desde fábrica, aunque para una medición de precisión hará falta un ajuste de la calibración.  
El sensor entrega un valor de 2.5 V para una corriente de 0 A y, a partir de allí, se incrementa proporcionalmente de acuerdo a la sensibilidad del propio sensor, mediante una relación lineal entre la salida de voltaje del sensor y la corriente.  
Dicha relación es una línea recta en una gráfica V-A:  
V = sensibilidad * I + 2.5; I = (V - 2.5) / sensibilidad  
Este producto está diseñado para su uso por debajo de 30V.  
La mayor desventaja del ACS712 es que es un sensor intrusivo, es decir, es necesario insertarlo en un conductor lo cual puede suponer que tengamos que cortar un cable.  
Fuentes: https://naylampmechatronics.com/blog/48_tutorial-sensor-de-corriente-acs712.html   
         https://www.luisllamas.es/arduino-intensidad-consumo-electrico-acs712/  


### Módulo cargador de batería  
Un cargador para baterías litio, TP4056, permite conectarle una fuente de energía eléctrica a su entrada y una batería a su salida para que pueda cargarse. 
El TP4056 es un chip encapsulado en formato SOP-8, adecua la entrada de energía para el estándar 1A y también puede controlar la temperatura. Además, para su funcionamiento, hace falta un puerto miniUSB para alimentar la batería a través de cables, LEDs de carga y de completado que avisan cuando está cargado y cuando se ha terminado el proceso, y BAT+/BAT- que son bornes de salida que irán conectados a los bornes de la batería que necesitamos cargar.  
Fuente:https://www.hwlibre.com/tp4056/

### Pulsadores  
Son componentes eléctricos que permiten o no el paso de la corriente dependiendo de si están accionados o no. Al presionarlo se abrirá o cerrará, y para que vuelva a su estado original habrá que realizar el mismo procedimiento.  En nuestro caso, los pulsadores los utilizaremos para seleccionar qué magnitudes queremos que mida nuestro multímetro. Por ejemplo, si necesitamos medir amperios, presionaremos ell pulsador uno; realizando el mismo proceso para medir el voltaje y la resistencia. A parte tendremos otro pulsador que servirá para encender el multímetro, encendiendo un led cuando esté en la posición que permita el paso de corriente al circuito y así poder diferenciar los estados de on y off.  
Fuente: https://www.areatecnologia.com/electricidad/pulsador.html

\newpage

# Organizador_Hospital :: twIA_2021-organizador_hospital

Vamos a realizar un sistema operativo con el funcionamiento de un hospital. Incorporaremos un sistema NFC para habilitar la lectura de la ficha de cada paciente y nos permitirá acceder a la información del mismo.

## Integrantes del equipo

Pablo Van den Bos de Lucas,
Álvaro Sánchez Barba,
Jaime Torres Abad,
Javier Tovar Castro,
Alberto Valcárcel González.

## Objetivos del trabajo

Queremos realizar un software que nos permita almacenar y organizar multitud de datos, en concreto para un hospital y un hardware que nos permita diferenciar cada paciente mediante un NFC y una tarjeta personalizada.
\newpage

# [PARKING] :: twIA_2021-parking

El proyecto trata de crear un parking público que identifique a los vehículos que entran, calcule el tiempo que permanecen en el interior y cuente las plazas que tiene libres

## Integrantes del equipo
Diego Ramírez Fuente @DiegoRamirezFuente
Rodrigo Martín Vargas @rodrimarvar
Laura Lucía Hernández @LauraHCampos

## Objetivos del trabajo
En nuestro proyecto utilizaremos un sensor de ultrasonidos junto con servomotores para crear una barrera de entrada a un parking. Conectaremos los datos que recoja el sensor de ultrasonidos, controlado por una placa de Arduino UNO, con el programa de Visual Studio para poder utilizarlos en nuestro código, estructurado en funciones, y así crear un contador de plazas libres, para poder informar al usuario de si va a poder aparcar antes de entrar. Además implementaremos un identificador de vehículos y un contador de tiempo para calcular el precio que el usuario debe pagar a la salida.
\newpage

# [Título del trabajo] :: twIA_2021-parking_publico

haremos una réplica de un parking público como los que podemos encontrar en las grandes ciudades. Reproduciendo un sistema de pago e identificación de matrículas, de señalización de plazas libres, y acceso mediante semáforos coordinados con los de la calle en la que se encuentre el acceso al parking. Además le daremos un toque más actual implementando un sistema de ayuda al aparcamiento conformado tanto por leds como por advertencias sonoras. Tambien introduciremos un sistema de guiado para los usuarios que les permita llegar a una plaza libre de la forma mas rapida y comoda posible.

## Integrantes del equipo
pablo moreno martín, MMPablo.
Ignacio de Benito Gómez,idebenitog.

## Objetivos del trabajo
El objetivo es estudiar y entender las similitudes y diferencias entre arduino y visual, aprender a manejar dichos programas con una mayor soltura. Necesaria para los próximos cursos del grado así como aprender a darle solución a problemas prácticos presentes en la vida real de la manera más práctica, eficiente y sencilla posible. 
\newpage

# Piscina automatizada :: twIA_2021-piscina_automatizada

Nuestro proyecto consiste en automatizar una piscina para facilitar al usuario su uso y manejo ante cambios de luz y adversidades meteorólogicas (lluvia y cambios de temperatura y presión); de modo que, en función de cada situación, pueda ser tapada, expulsar agua y activar la iluminación.


## Integrantes del grupo

 1. Jimena López Maldonado - jimenalopez02 .
 2. Natalia Miguel Cuenca -  nataliamiguel .


## Objetivos del trabajo
Desarrollar un programa en lenguaje C con objetivo de automatizar una piscina de manera que, según los valores de distintos parámetros físicos (presión, temperatura e iluminación), se lleven a cabo funciones tales como el vaciado parcial de su interior, el encendido o apagado de la iluminación y cubrirla con una lona. 
Además, el usuario tendrá acceso a un menú para poder llevar a cabo todas estas funciones manualmente.

## Maqueta de la piscina
Para llevar a cabo nuestro trabajo construiremos una maqueta que simule una piscina real y algunas de sus funciones.
Para ello utilizaremos un recipiente de plástico, el cual perforaremos para que exista una trampilla que pueda expulsar el agua cuando sobrepase el nivel deseado por el usuario.
Llevará incorporada:
- Un termómetro (sonda de temperatura arduino  DS18B20).
- Un sensor de iluminación (sensor LDR).
- Un sensor de presión barométrica (módulo BMP180).


## Dinámica de la aplicación
| Menú |
| --- |
| 1. *Abrir* o *Cerrar* toldo  |
| 2. Temperatura |
| 3. *Encendido* o *Apagado* de la iluminación |
| 4. Control del nivel del agua |
| 5. *Automático* |

**Opción 1 - *Abrir* o *Cerrar* toldo**

El usuario puede manipular la apertura y el cierre del toldo.



**Opción 2 - Temperatura**

Mediante el acceso a está opción, el usuario puede conocer la temperatura del interior de la piscina.



**Opción 3 - *Encendido* o *Apagado* de la iluminación**

Manualmente, el usuario puede manejar la iluminación de la piscina.



**Opción 4 - Control del nivel del agua**

El usuario puede conocer el nivel del agua, para así cambiarlo a su elección.



**Opción 5- *Automático***

Esta opción es el principal propósito de nuestro programa, ya que facilita al usuario el manejo de la piscina y le ahorra tiempo. 
Primeramente, tendrá que introducir los baremos correctos entre los que se puedan encontrar los valores de la temperatura, la presión y la intensidad luminosa. 
Así, si los valores de presión superan los fijados, se cerrará el toldo (por si fuera debido a la lluvia) y se abrirá la trampilla que expulsa agua para reestablecer los valores de presión. 
Del mismo modo, cuando los sensores de iluminación detecten que la intensidad luminosa no es suficiente (durante la noche o si está nublado), se encenderán las luces de la piscina y, por el contrario, si hay luz suficiente, la iluminación permanecerá apagada; pero esto solo ocurre cuando el sensor de movimiento detecta movimiento a una distancia también introducida por el usuario, para evitar el gasto de luz si no hay nadie en las inmediaciones.
Por último, si el agua alcanza una termperatura determinada, el toldo cubirá la piscina para evitar un aumento en el cambio de temperatura.


 ## Sensores
 **Medida de temperatura- Sonda de temperatura DS18B20:**
 
*Fuente*: https://programarfacil.com/blog/arduino-blog/ds18b20-sensor-temperatura-arduino/
El sensor de temperatura DS18B20 es un dispositivo que se comunica de forma digital. Cuenta con tres terminales: Vcc, GND y el pin Data y utiliza comunicación por protocolo serial digital OneWire; este protocolo de comunicación permite enviar y recibir datos utilizando un solo cable (a diferencia de otros, que utilizan dos o más líneas de comunicación digital).
Para leer el sensor con un Arduino es necesario utilizar dos librerías que deben ser instaladas antes de cargar el código a nuestra placa de desarrollo; son las siguientes:
- Dallas Temperature.
- OneWire
El DS18B20 tiene errores debido a factores externos, al ruido inherente en los circuitos eléctricos y alteraciones en el medio físico.


**Medida de intensidad luminosa- Sensor de luz LDR GL55:**

*Fuente*: https://www.luisllamas.es/medir-nivel-luz-con-arduino-y-fotoresistencia-ldr/
El sensor LDR es un dispositivo formado por un semiconductor y su funcionamiento es tal que, al aumentar la incidencia de la luz sobre él, disminuye su resistencia.
Este cambio de resistencia se debe a que, cuando recibe luz, el semiconductor que lo forma absorbe fotones y los electrones pasan a la banda de conducción y así disminuye su resistencia.
Su mayor desventaja es la poca precisión y su uso limitado, ya que no puede ser usado para medir la intesidad lumínica, solo detecta los valores de "oscuridad" y "luminosidad".


 **Medida de cambios de presión del agua- Módulo de presión barométrica BMP180**
 
*Fuente*: https://naylampmechatronics.com/blog/43_tutorial-sensor-de-presion-barometrica-bmp180.html
Como su nombre indica, este sensor mide la presión atmosférica. Para su uso es necesario descargar la librería desarrollada por Sparkfun (se puede descargar desde el link de la fuente).
Su mayor inconveniente en nuestro proyecto es que se ve afectado por los cambios de temperatura.
Las funciones que vamos a utilizar con este sensor son: 
- *begin ()*: nos permite inicializar el sensor,
- *startPressure(Sobremuestreo);*: permite iniciar la medición de presión e indica el tiempo que tarda en ofrecer el resultado,
- *getPressure(P, T);*: da como resultado el valor de presión; hay que indicarle la temperatura, ya que ésta influye en los cálculos de la presión.
Todas las funciones devuelven un 1, si se realizan con éxito, o un 0, si no funcionan y hay algún error.

# Código de Arduino
#include <Servo.h>
#include <OneWire.h>
#include <DallasTemperature.h>


#define pinTrigger 10
#define pinEcho 9
//Nat temperatura
OneWire ourWire(2); //Comunico el programa con el pin 2 del Arduino
DallasTemperature sensor(&ourWire);

int analogInPin = A0;
int analogValue = 0;
int led = 13;

int TRIG = 10; //Variable que contiene el número del pin al cual conectemos la señal "trigger"
int ECO = 9; //Variable que contiene el número del pin al cual conectamos la señal "echo"
int estado = 0;
int altura = 13; //Constante altura a la que se encuentra el sensor ultrasonido de la base de la piscina
int DURACION; //Variable duración para la función nivel_agua_consigna
float DISTANCIA; //Variable distancia para la función nivel _agua_consigna
Servo servo1 ;
float distancia; //Variable distancia para la función mostrar_nivel_agua, de tipo float que contendrá la distancia en cm
int numero2;
long tiempo; //Variable tiempo para la función mostrar_nivel_agua


void setup()
{
  delay(1000);
  Serial.begin(9600);

  sensor.begin();
  pinMode(led, OUTPUT);

  pinMode(pinTrigger, OUTPUT); //Configuramoms el pin de "trigger" como salida
  pinMode(pinEcho, INPUT);  //Configuramoms el pin de "echo" como entrada
  digitalWrite(pinTrigger, LOW);//Ponemos en voltaje bajo(0V) el pin de "trigger"


}

void loop()
{

  if (Serial.available() > 0)  // Si hay mensajes procedentes del PC
    procesar_mensaje();
  //Jime:
  switch (estado) {
    case 0: break;
    case 1 :
      if (medir_distancia() > numero2) {
        servo1.write(0);
        estado = 0;
      }
  }


}
// Resto de acciones


float medir_distancia(void)
{
  float DISTANCIA;
  long DURACION;

  digitalWrite(TRIG, HIGH);
  delay(1);
  digitalWrite(TRIG, LOW);
  DURACION = pulseIn(ECO, HIGH);
  DISTANCIA = DURACION / 58.2;
  return (DISTANCIA);
}


void procesar_mensaje(void)
{
  int numero1;
  int numero2;
  int numero3;
  float temp;
  String cadena = Serial.readStringUntil('\n'); // Lee mensaje
  String valor = Serial.readStringUntil('\n');  // Lee valor
  numero1 = valor.toInt();  // Transforma valor a entero
  numero2 = valor.toInt();
  numero3 = valor.toInt();

  if (cadena.equals("MOSTRAR_TEMP")) // Entre las comillas se pone el texto del mensaje que se espera
  {
    sensor.requestTemperatures();
    temp = sensor.getTempCByIndex(0);
    temp = temp * 100;
    numero1 = int(temp);
    Serial.println("TEMPERATURA_ACTUAL ");
    Serial.println(numero1);
  }
  else if (cadena.equals("ILUMINACION")) // Y así sucesivamente con todos los posibles mensajes
  {
    numero1 = digitalRead(led);
    Serial.println(numero1);

  }
  else if (cadena.equals("AUTOMATICO"))
  {
    analogValue = analogRead(analogInPin);
    Serial.println(analogValue);
    delay(10);
    if (analogValue < 800) {
      digitalWrite(led, HIGH);
    } else {
      digitalWrite(led, LOW);
    }

  }
  else if (cadena.equals("APAGA"))
  {
    digitalWrite(led, LOW);
  }
  else if (cadena.equals("ENCIENDE"))
  {
    digitalWrite(led, HIGH);
  }
  else if (cadena.equals("MOSTRAR_NIVEL_AGUA")) // Entre las comillas se pone el texto del mensaje que se espera
  {
    digitalWrite(pinTrigger, HIGH);//Ponemos en voltaje alto(5V) el pin de "trigger"
    delayMicroseconds(10);//Esperamos en esta línea para conseguir un pulso de 10us
    digitalWrite(pinTrigger, LOW);//Ponemos en voltaje bajo(0V) el pin de "trigger"

    tiempo = pulseIn(pinEcho, HIGH);//Utilizamos la función  pulseIn() para medir el tiempo del pulso/echo
    distancia = tiempo * 0.01715; //Obtenemos la distancia considerando que la señal recorre dos veces la distancia a medir y que la velocidad del sonido es 343m/s
    if (distancia >= 140) {
      distancia = 13;
    }
    distancia = distancia * 100;
    numero2 = int(distancia);
    Serial.println("distancia ");
    Serial.println(numero2);
    delay(10);          //Nos mantenemos en esta línea durante 100ms antes de terminar el loop
  }
  else if (cadena.equals("NIVEL_AGUA_CONSIGNA")) // Y así sucesivamente con todos los posibles mensajes
  {
    digitalWrite(TRIG, HIGH);
    delay(1);
    digitalWrite(TRIG, LOW);
    DURACION = pulseIn(ECO, HIGH);
    DISTANCIA = DURACION / 58.2;
    DISTANCIA = DISTANCIA * 100;
    //Serial.println(DISTANCIA);
    delay(200);
    // numero= altura- numero2;
    //Serial.println(numero2);
    if (DISTANCIA <= numero2 && 0 <= DISTANCIA)
    {
      estado = 1;
      servo1.write(90);
    }
    else {
      servo1.write(0);
    }
  }
}


# Código  Visual
#define MAX_BUFFER 200
#define MAX_INTENTOS_READ 4
#define MS_ENTRE_INTENTOS 250
#define SI 1
#define NO 0

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <windows.h>
#include <string.h>
#include <conio.h>
#include "SerialClass/SerialClass.h"

// Funciones prototipo
int menu_principal(void);
void configura(void);

void Talk_with_Arduino(Serial* Arduino);
void Send_to_hw(Serial*, char*);
int Receive_from_hw(Serial* Arduino, char* BufferEntrada);
int Send_and_Receive(Serial* Arduino, const char* msg_out, int valor_out, char* msg_in, int* valor_in);
void monitorizar_aforo(Serial*);

void mostrar_temp(Serial*);
void luces(Serial*);
void automatico(Serial*);
void apagar_luces(Serial*);
void encender_luces(Serial*);
void mostrar_nivel_agua(Serial*);
void elegir_nivel_agua(Serial*);

int main(void)
{
	Serial* Arduino;
	char puerto[] = "COM5"; //Puerto serie al que está conectado Arduino
	int opc;  // Opción del menú principal seleccionada

	// Tareas de configuración y carga
	configura();
	Arduino = new Serial((char*)puerto);  // Establece la conexión con Arduino

	// Bucle principal de la aplicación
	do
	{
		opc = menu_principal();
		switch (opc)
		{
		case 1:
			toldo(Arduino);
			break;  
		case 2:
			mostrar_temp(Arduino);
			break;
		case 3:
			luces(Arduino);
			break;
		case 4:
			mostrar_nivel_agua(Arduino);
			break;
		case 5:
			automatico(Arduino);
			break;
		case 6:break;
		}
		printf("\n\n");
	} while (opc != 6);

	// Tareas de desconexión y cierre 
	return 0;
	
}

int menu_principal(void)
{
	int opcion;
	do
	{
		printf("1 - Abrir o cerrar el toldo\n");
		printf("2 - Leer temperatura\n");
		printf("3 - Encendido/Apagado de luces\n");
		printf("4 - Leer nivel del agua\n");
		printf("5 - Automatico\n");
		printf("6 - Cerrar Aplicación\n");
		printf("Seleccione opción: ");
		scanf_s("%d", &opcion);
		if (opcion < 1 || opcion>6)
			printf("\nOpción inexistente.\n\n");
	} while (opcion < 1 || opcion>6);
	return opcion;
}

void mostrar_temp(Serial* Arduino) {
	int bytes_recibidos;
	char mensaje_in[200];
	char mensaje_out[] = "MOSTRAR_TEMP";
	int temp;
	float temp2;
	bytes_recibidos=Send_and_Receive(Arduino, "MOSTRAR_TEMP",1 , mensaje_in, &temp);
	if (bytes_recibidos != 0) {
		temp2 = (float)temp / 100;
		printf("\nLa temperatura es %.2fºC",temp2);
	}
}


void luces(Serial* Arduino) {
	int bytes;
	char mensaje_in[200];
	char mensaje_out[]="ILUMINACION";
	int luz;
	bytes= Send_and_Receive(Arduino, "ILUMINACION", 1, mensaje_in, &luz);
	if (bytes != 0) {
		if (mensaje_in[0]=='1') {
			int siono;
			printf("\nLas luces están encendidas, desea apagarlas?\n\t1.Si\n\t2.No\n");
			scanf_s("%d", &siono);
			switch (siono) {
			case 1: apagar_luces(Arduino);
				break;
			case 2:
				break;
			}
		}
		else {
			int siono;
			printf("\nLas luces están apagadas, desea encenderlas?\n\t1.Si\n\t2.No\n");
			scanf_s("%d", &siono);
			switch (siono) {
			case 1: encender_luces(Arduino);
				break;
			case 2:
				break;
			}
		}
	}
}

void apagar_luces(Serial* Arduino) {
	int bytes;
	char mensaje_entr[200];
	char mensaje_sali[] = "APAGA";
	int valor;
	bytes= Send_and_Receive(Arduino, "APAGA", 1, mensaje_entr, &valor);
}
void encender_luces(Serial* Arduino) {
	int bytes;
	char mensaje_entr[200];
	char mensaje_sali[] = "ENCIENDE";
	int valor;
	bytes = Send_and_Receive(Arduino, "ENCIENDE", 1, mensaje_entr, &valor);
	
}

void mostrar_nivel_agua(Serial* Arduino)
{
	int bytes_recibidos;
	char mensaje_in[255];
	char mensaje_out[] = "MOSTRAR_NIVEL_AGUA";
	float altura = 13;
	int distancia;
	float nivel2;
	bytes_recibidos = Send_and_Receive(Arduino, "MOSTRAR_NIVEL_AGUA", -1, mensaje_in, &distancia);
	if (bytes_recibidos != 0)
	{
		nivel2 = (float)distancia / 100;
		nivel2 = altura - nivel2;

		printf("\nEl nivel del agua de su piscina es %.2f cm", nivel2);

	}
}


void automatico(Serial* Arduino) {
	elegir_nivel_agua(Arduino);
	int bytes_recibidos;
	char mensaje_entr[200];
	char mensaje_sal[] = "AUTOMATICO";
	int var;
	char tecla;
	bytes_recibidos = Send_and_Receive(Arduino, "AUTOMATICO", 1, mensaje_entr, &var);

	while (!_kbhit())
	{
		automatico(Arduino);
	}
	tecla = _getch();
}

void elegir_nivel_agua(Serial* Arduino)
{
	int bytes_recibidos;
	char mensaje_in[255];
	char mensaje_out[] = "NIVEL_AGUA_CONSIGNA";
	float nivel, x;
	int volumen, altura = 13;
	int a = 12, b = 12, c = 6;
	volumen = a * b * c;
	printf("\nEl volumen de su piscina es %d cm3", volumen);
	printf("\nElija el nivel de agua maximo al que quiere que este su piscina(en cm) :");
	scanf_s("%d", &x);
	nivel = altura - x;
	bytes_recibidos = Send_and_Receive(Arduino, "MOSTRAR_NIVEL_AGUA", nivel, mensaje_in, &altura);

}

void configura(void)
{
	// Establece juego de caracteres castellano
	// Para que funcione hay que partir de un proyecto vacío
	// No utilice la plantilla Aplicación de consola C++
	setlocale(LC_ALL, "spanish");
}

// Ejemplo de función de intercambio de datos con Arduino
void Talk_with_Arduino(Serial* Arduino)
{
	//char BufferSalida[MAX_BUFFER];
	char BufferEntrada[MAX_BUFFER];
	int bytesReceive,numero_recibido;
	
	if (Arduino->IsConnected()) // Si hay conexión con Arduino 
	{

		// Para enviar un mensaje y obtener una respuesta se utiliza la función Send_and_Receive
		// El mensaje está formado por un texto y un entero
		// El mensaje que se recibe está formado también por un texto y un entero.
		// Parámetros de la función:
		// El primero es la referencia a Arduino
		// El segundo es el mensaje que se desea enviar
		// El tercero es un entero que complementa al mensaje que se desea enviar
		// El cuarto es el vector de char donde se recibe la respuesta
		// El quinto es la referencia donde se recibe el entero de la respuesta
		// La función devuelve un entero con los bytes recibidos. Si es cero no se ha recibido nada.

		bytesReceive = Send_and_Receive(Arduino, "GET_AFORO_MAX", -1, BufferEntrada, &numero_recibido);
		if (bytesReceive == 0)
			printf("No se ha recibido respuesta al mensaje enviado\n");
		else
			printf("Mensaje recibido %s %d\n", BufferEntrada, numero_recibido);
	}
	else
		printf("La comunicación con la plataforma hardware no es posible en este momento\n"); // Req 3
}

// Protocolo de intercambio mensajes entre Pc y platforma hardware
// Envío Mensaje valor
// Recibe Mensaje valor
// Retorna bytes de la respuesta (0 si no hay respuesta)
int Send_and_Receive(Serial* Arduino, const char* msg_out, int valor_out, char* msg_in, int* valor_in)
{
	char BufferSalida[MAX_BUFFER];
	char BufferEntrada[MAX_BUFFER];
	char* ptr;
	int bytesReceive;

	sprintf_s(BufferSalida, "%s\n%d\n", msg_out, valor_out);
	Send_to_hw(Arduino, BufferSalida);
	bytesReceive = Receive_from_hw(Arduino, BufferEntrada);
	if (bytesReceive != 0)
	{
		ptr = strpbrk(BufferEntrada, " ");
		if (ptr == NULL)
			*valor_in = -1;
		else
		{
			*valor_in = atoi(ptr);
			*ptr = '\0';
		}
		strcpy_s(msg_in, MAX_BUFFER, BufferEntrada);
	}
	return bytesReceive;
}


// Envía un mensaje a la plataforma hardware
void Send_to_hw(Serial* Arduino, char* BufferSalida)
{
	Arduino->WriteData(BufferSalida, strlen(BufferSalida));
}

//Recibe (si existe) un mensaje de la plataforma hardware
//Realiza MAX_INTENTOS_READ para evitar mensajes recortados
int Receive_from_hw(Serial* Arduino, char* BufferEntrada)
{
	int bytesRecibidos, bytesTotales = 0;
	int intentos_lectura = 0;
	char cadena[MAX_BUFFER];

	BufferEntrada[0] = '\0';
	while (intentos_lectura < MAX_INTENTOS_READ)
	{
		cadena[0] = '\0';
		bytesRecibidos = Arduino->ReadData(cadena, sizeof(char) * (MAX_BUFFER - 1));
		if (bytesRecibidos != -1)
		{
			cadena[bytesRecibidos] = '\0';
			strcat_s(BufferEntrada, MAX_BUFFER, cadena);
			bytesTotales += bytesRecibidos;
		}
		intentos_lectura++;
		Sleep(MS_ENTRE_INTENTOS);
	}
	return bytesTotales;
}
\newpage

# [PLOTTER - LECTOR] :: twIA_2021-plotter-lector
Se va a crear un plotter para poder imprimir distintos tipos de información y por otro lado un lector que sea capaz de leer la informacion impresa y devolverla a la forma original
## PROGRESO 7 MAYO
*[PRESENTACION PROGRESO 7 MAYO](https://upm365-my.sharepoint.com/:p:/g/personal/enrique_garcia_torija_alumnos_upm_es/EY1fPgKfuP5Pi-AmMVkfv5ABUf5CDvkL2ckb0-9tb-_h-Q?e=uW6PC5)*
## Integrantes del equipo
Enrique García Torija -@Engarto <br/>
Diana Perucho Barichevskaia -@Dianaperucho<br/>
Rubén García Ladrón -@rgladron<br/>
Qingyun Xu-@Qingyun-Xu<br/>
Claudia Sánchez Massa -@Claudia1130<br/>

## Objetivos del trabajo
Transformar información en una forma más sencilla para facilitar su representación<br/>
Conectar y trasnmitir la información a la placa Arduino desde donde se manejará el plotter<br/>
Controlar el plotter de forma que permita representar lo deseado<br/>
Crear un lector que pueda transformar un código impreso en el papel en información y trasmitirla al ordenador de vuelta<br/>
Decodificar la información leída por el lector <br/>
## Documentos   
(_enlaces a los pdfs_)  
*[Descripción](https://github.com/aigora/twIA_2021-plotter-lector/blob/master/Pdf/Documento.pdf)*
- *[Lista de objetivos](https://github.com/aigora/twIA_2021-plotter-lector/blob/master/Pdf/Documento1.pdf)*
- *[Datos de entrada](https://github.com/aigora/twIA_2021-plotter-lector/blob/master/Pdf/Documento2.pdf)*
- *[Datos de salida](https://github.com/aigora/twIA_2021-plotter-lector/blob/master/Pdf/Documento3.pdf)*
- *[Diagramas](https://github.com/aigora/twIA_2021-plotter-lector/blob/master/Pdf/Documento5.pdf)*
\newpage

# Proyecto_Tráfico🚦🚘 :: twIA_2021-proyecto_trafico-1


Poder controlar el tráfico mediante un radar (sensor de velocidad) y un semaforo(sensor de movimiento). Gracias a un programa de visual studio seremos capaces de calcular (con funciones) cuanto dinero se ha recaudado según las infracciones cometidas.

## Integrantes del equipo

- Almudena Pérez Nieto, @almuperezzz
- Tian Yao Lin @TianYaoLin
- Sofía Toledo Delgado @sofiatoledo
- Laura Sedano Molero @laurasedanomolero
- Patricia Plaza Ramos @PatriciaPlazaRamos

## Objetivos del trabajo

El objetivo de este trabajo es simular un control de tráfico, con una maqueta de un scalextric. Mediante la ayuda de un sensor de movimiento y de velocidades veremos si los coches se pasan de la velocidad permitida (que estará regulada según tres intervalos) o si se saltan un semáforo en rojo. Estas infracciones se guardarán en el ordenador (indicando la matrícula del coche, fecha y motivo de multa, etc.) y a través de unas funciones en visual studio calcularemos el importe que tengan que tendrán que pagar dichos infractores.
\newpage

# [Reproductor MP3] :: twIA_2021-reproductor_mp3

[Descripción breve del proyecto a realizar (2-3 frases).]
>El trabajo consiste en un reproductor de musica que es capaz de reproducir canciones previamente guardados en formato MP3, la elección del cancion a reproducir se basa en los datos introducido por el usuario.

## Integrantes del equipo

[Nombres, apellidos, y usuario GitHub de los integrantes del equipo.]
>Zeqi, Lin, zeqilin
>
>Miguel Lobo Ocaña, mloboo
>
>Andrés Romero Souto, andresrosouto
>
>Valeri Paola Ramirez Moreira
>
>Patrick Castillo Mogollón, arguor
## Objetivos del trabajo

[Lista de los objetivos que se persiguen con el trabajo propuesto.]
>1. leer correctamente los datos introducido por el usuario
>2. guardar varias canciones en una biblioteca o fichero
>3. diferenciar las canciones mediante datos introducidos
>4. reproducir la cancion mediante botones controlado por arduino

## Sensores y actuadores
>Arduino: microcontrolador que establece conexiones del ordenador con los sensores y actuadores para ejecutar cierta tarea
>
>Módulo DFplayer mini: módulo reproductor de MP3
>
>Buzzer o altavoz: salida de la musica que va conectado al modulo DFplayer
>
>pulsador: sirve para empezar o pausar la canción
\newpage

# [Terraquia] :: twIA_2021-rol-unity-c

El proyecto consta de un juego hecho en el motor grafico Unity con el aspecto del codigo desarrollado en c#, ademas, el juego contara con un mando propio para jugarlo. Sera un juego tipo MMO, con mapa y cosas tipicas del genero. En cuanto al mando/controlador, esta por decidir si se hace algun tipo de teclado casero o mando estilo consola. 

## Integrantes del equipo:

- Yikai Zhan
- Diego Ramírez Peinado
- Carlos Mendoza Carpintero
- Miguel Ángel Pascual Collar
- Pablo Martínez-Conde Albizu
- Uberto Alejandro Martínez Rodríguez

## Objetivos del trabajo:

Crear un juego totalmente funcional con un mando diseñado por nosotros, el mando debe ser capaz de ejecutar todas las acciones que diseñemos para dicho juego, y el juego debe obedecer lo que nosotros queramos que este haga a traves de las acciones del mando. 
- El juego contara con un personaje, el cual podremos mover por un mapa principal e incluso podremos cambiar a otros escenarios.
- Dentro del propio mapa habra varios npcs ("non playable character") los cuales nos daran unas misiones o recados para hacer, algunos incluso te recompensaran por ello.
- Aparte de los npcs, habra varios enemigos a los que nos podremos enfrentar.
- El juego se basara en una corta historia, en la que nuestro objetivo es conseguir dinero para que nuestro personaje pueda vivir dentro de la zona del poblado. Para ello el jugador ha de ayudar a los npcs y cumplir misiones. Una vez obtenido el dinero suficiente, habra un npc en el pueblo que se ofrece a construirte la casa por una cantidad de dinero.
- El juego contara con la opcion de pausarse, donde nos aparecera un menu con varias opciones, entre las que posiblemente agregaremos una opcion para guardar el progreso.
Por ultimo, el juego contara con musica y sonidos y posiblemente añadiremos en el menu de pausa algun tipo de forma para modificar el volumen de esta.

## Entorno, diseño y funcionalidad:
![GitHub1](https://user-images.githubusercontent.com/61047659/119157555-99305480-ba55-11eb-896d-3565dac1511a.png)
Modificacion de las animaciones activas dentro del entorno para un npc. Con los parametros MovX y MovY, que obtenemos del codigo que controla al propio npc, modificamos la animacion que se ejecuta. Dentro del animador, lo que estamos viendo es lo que hay dentro de un bloque (en las siguientes imagenes se enseña solo la parte principal del animador, no los bloques por dentro), en este caso observamos que el bloque contiene 4 animaciones diferentes, una para cada direccion a la que el npc puede mirar. Si se hiciese click a "Blend Tree" observariamos que condiciones se ha impuesto a los parametros MovX y MovY para que cada animacion se ejecute. Si se quiere hacer un bloque de animaciones nuevo se tendria que crear otro "Blend Tree" desde el menu principal del animador, y una vez dentro de este nuevo bloque, asegurarnos de que el metodo de mezclado de animaciones esta ajustado a 2D Freeform Cartesian, para que podamos tener 2 parametros definiendo las condiciones de ejecucion. tambien se puede modicar el tiempo de ejecucion de las animaciones y si estas estan en bucle o no.
![GitHub2](https://user-images.githubusercontent.com/61047659/119157575-9c2b4500-ba55-11eb-869c-b2aa456efe97.png)
Arbol de animaciones del personaje principal. Este incluye mas parametros ya que sus animaciones son mas detalladas y variadas. Dentro de cada bloque hay varias animaciones y se va alternando de bloque segun las condiciones impuestas en las flechas (valores de los parametros asignados). Parametros obtenidos del codigo que define al personaje y sus acciones. Por ejemplo, la condicion de pasar de atacando a estar quieto, es que el personaje no se este moviendo, si el personaje nada mas atacar decidiese moverse, el personaje pasaria a mostrar la animacion de moverse.
![GitHub3](https://user-images.githubusercontent.com/61047659/119157584-a0eff900-ba55-11eb-9895-c3e13821ad90.png)
Imagen de parte del codigo y los elementos que forman y hacen funcionar la barra de vida y el indicador del nivel. Se puede observar que esto esta controlado por dos funciones diferentes que se ha creado, una controla los elementos de tipo Visual (carteles e indicadores) y la otra se dedica a las estadisticas del personaje. En la parte de codigo observamos que hay dos funciones visibles (se pueden crear otras personalizadas), una de ellas es Start, la cual solo se acciona una vez (al iniciar el programa). La otra es Update, que se ejecuta cada unidad de tiempo, la unidad de tiempo la define el propio entorno con una variable llamada "Time.deltaTime". Normalmente esta unidad de tiempo es un "frame" lo cual simboliza el tiempo que tarda en actualizarse la imagen.
![GitHub4](https://user-images.githubusercontent.com/61047659/119157606-a64d4380-ba55-11eb-85cf-13ea10a0fe27.png)
En esta imagen podemos observar el juego en marcha dentro del entorno. En el apartado de jerarquia podemos ver que esta dividido en dos. La primera parte "Cave" es el mapa con sus puntos de transporte, suelo, colisionadores personalizados, npcs y enemigos. La segunda parte es debida a una funcion que causa que no se destruyan los objetos al cambiar de escena, esto incluye al personaje, los indicadores y el reproductor y administrador de sonido que hemos creado (de esta forma se conserva el nivel, la vida y todo lo relacionado con estos objetos al cambiar de escena). Por otra parte, el sistema de eventos al atacar a un enemigo, crea los indicadores de daño que se ha creado, que estan programados para desaparecer 1 segundo despues de ser creados, de forma que no se acumulen y ocupen memoria, bajando el rendimiento del juego. Al atacar tambien se ha agregado sonidos al recibir daño.
![GitHub5](https://user-images.githubusercontent.com/61047659/119157614-a8170700-ba55-11eb-91e5-26a77752cacb.png)
En esta foto se puede observar que no hay errores en la consola de la aplicación, lo que quiere decir que no hay ningún error de código o problemas con sonido apreciables por la propia aplicación a primera vista ni incompatibilidades. Obviamente hay algunas cosas que la aplicación no detecta ("bugs") pero por el momento no se ha encontrado ninguno que no haya sido arreglado a día de hoy. Si aparecen errores no decisivos, el juego no se pausa y en la consola nos saldria una alerta amarilla. Si es un error mas serio, normalmente relacionado con el codigo o la referencia a objetos, nos saldria un error rojo y el juego se pararia inmediatamente. Tambien se puede usar la consola para asegurarnos de que alguna parte del codigo se esta ejecutando en caso de duda. Esto se haria incluyendo lo siguiente: Debug.Log("Texto de ejemplo para confirmar");. Esto resulta util cuando pruebas funciones nuevas y no estan funcionando del todo como deberian.
![GitHub6](https://user-images.githubusercontent.com/61047659/119199407-45d8f900-ba8b-11eb-80d9-7fc28254b626.png)
Creada una funcion dentro del juego que se encarga de recoger y administrar dinero, este dinero se puede obtener tambien con misiones o matando enemigos, ya que dentro de los respectivos codigos se ha agregado una recompensa por mision, con un valor personalizado. En el caso de los enemigos, se añadio un elemento dentro de la funcion que controla su vida, de forma que cuando la vida del enemigo sea igual o menor que cero, al morir, aparezca una moneda justo donde este enemigo estaba.
![GitHub7](https://user-images.githubusercontent.com/61047659/119199425-4ec9ca80-ba8b-11eb-8cb9-31c4724b25c3.png)
Desarrollando un boss para el juego y creando las animaciones. Tambien cuenta con un sonido personalizado de ataque. Se ha seguido el mismo proceso (mas o menos) que haciendo a los demas enemigos, aunque para encontrar los "sprites" de este ha habido que usar unas herramientas de edicion de imagen debido a que en el paquete original en el que venia se veia bastante pixelado, y con las herramientas que nos proporcionaba unity no conseguiamos subirle la calidad lo suficiente como para que se viese decentemente.
![GitHub8](https://user-images.githubusercontent.com/61047659/119543044-83da6380-bd90-11eb-8d59-94b9d1599f40.png)
Se ha agregado un menu de pausa, principal y de opciones. El de opciones cuenta con cambio de resolucion, personalizacion del volumen del juego y modo pantalla completa. Dentro del editor no podemos comprobar si esto funciona bien, pero como no da errores asumo que funciona, antes de la entrega se verificara el funcionamiento. Aparte de estos menus, se ha agregado una opcion de carga y guardado de progreso, pero esta por arreglar, ya que al cambiar de escena esto da errores. Se ha creado unas misiones nuevas para que el jugador cuente con un objetivo final, y se esta por implementar una que te cree una casa a cambio de parte de tu dinero. Por ultimo cabe resaltar que al entrar al juego desde el menu principal estamos teniendo un problema con el cambio de escena, que por motivos desconocidos se desconfigura y todos los puntos de salida se unen en uno solo (casa numero 2), esta por arreglar.

Todos los bugs estan arreglados en la version final, pero el reescalado de la barra de vida no funciona bien del todo, se mantiene en su sitio, pero no en la esquina superior, y no conseguimos arreglarlo.

En total se han hecho 525 versiones dentro de Unity, con la herramienta collaborate. 

## Video Funcionamiento del Juego

El enlace del vídeo explicativo de los aspectos generales del proyecto:

https://drive.google.com/file/d/1BG80LMzm8fiqRuZnmeNy88Nv9osSdbef/view?usp=sharing

## Hardware
Piezas utilizadas:
- Modulo Arduino micro 5V
- 10 pulsadores
- 1 Protoboard
- Juego de cables

![Mando](https://user-images.githubusercontent.com/61047659/119541756-12e67c00-bd8f-11eb-87a0-31d755800220.jpg)
![Mando 1](https://user-images.githubusercontent.com/61047659/119541748-111cb880-bd8f-11eb-8f71-aa117fce6d0c.jpg)
![Mando 2](https://user-images.githubusercontent.com/61047659/119543873-6eb20480-bd91-11eb-920e-1b7961069fba.jpg)
Importante que en placa y puerto ponga exactamente eso (nuestra placa y el puerto que hemos usado).

## Video Funcionamiento del Hardware

https://user-images.githubusercontent.com/61047659/119556791-b9d31400-bd9f-11eb-805a-1ca7995df1c3.mp4


El mando funciona como se puede observar (se ha probado con la primera version funcional que se entrego en su momento), todos los controles salvo el escape y el enter estan integrados, este ultimo no esta debido a que la biblioteca keyboard solo deja teclas que imprimen cosas en pantalla y los encargados del hardware no han encontrado una forma de implementarlo.
\newpage

#  Vehículo Autónomo :: twIA_2021-seguidor-de-lineas-de-colores
Vehículo autónomo  gobernado por un ordenador con el  objetivo de seguir lineas de colores
## Integrantes del equipo
Javier Robinat, 
Álvaro Rico , 
Carlos Miguel Martín, 
Joan Bellido, 
Pablo Manuel Sánchez

## Objetivos del trabajo
Ampliar nuestros conocimientos sobre los sensores que vamos a utilizar además de practicar y mejorar nuestra habilidad a la hora de crear y manejar código en el lenguaje de C

## Hardware
Identificamos el chasis y los compenentes electrónicos

### Chasis
El chasis está formado por contrachapado, cuenta con multitud de agujeros de diferentes tamaños con el objetivo de poder acoplar todos los elementos necesarios.
En primer lugar decidimos montar dos ruedas que van conectadas a través de dos motores que se conectan a su vez a una batería formada por 4 pilas y a un interruptor.
Seguidamente colocamos una tercera rueda que actúa como auxiliar y cuyo giro es de 360º.

![image](https://user-images.githubusercontent.com/61272141/117010129-c73f3600-acec-11eb-8004-abe25de5663f.png)

![image](https://user-images.githubusercontent.com/61272141/117010314-f81f6b00-acec-11eb-8434-5c17844dfd44.png)

![image](https://user-images.githubusercontent.com/61272141/117015751-4f740a00-acf2-11eb-9765-f451bb520dad.png)

![image](https://user-images.githubusercontent.com/61272141/117036064-55271b00-ad05-11eb-822f-f314233f3f16.png)



### Componentes electrónicos
El vehículo esta compuesto por diversos componentes electrónicos que se detallarán a continuación. Cabe remarcar que algunos de ellos pueden verse variados debido al problema actual de abastecimiento.

#### Arduino
En primer lugar encontramos el arduino. Esta es la placa principal del proyecto y la encargada de coordinar el resto de componentes/sensores que constituyen el prototipo. 
En nuestro caso estamos empleando ELEGOO UNO R3, es una placa electrónica de alta calidad 100% funcional y compatible con Arduino IDE.
ELEGOO UNO R3 usa un ATMEGA16U2 como Chip de interfaz serie y un ATmega328P como microcontrolador haciéndolo más rápido en las transferencias y almacenamiento de datos y con más tienda de memoria. Soporta entrade de 5v USB y también 7v – 12v.
Incluye un fusible reseteable PTC que puede proteger ls placa de cortocircuitos causados por errores de conexión.
ELEGOO UNO R3 coloca pines SDA y SCL junto al AREF. Además, hay dos pasadores colocados cerca del pasador RESET. Uno es el IOREF que permite que los blindajes se adapten al voltaje provisto desde la placa y el otro está reservado para propósitos futuros. El ELEGOO R3 funciona con todos los escudos existentes y puede adaptarse a los nuevos escudos que utilizan estos pines adicionales.

Caracteristicas:

* Microcontrolador ATmega328P

* Voltaje de entrada: 7-12V

* 5V de corriente eléctrica: 500MA

* Corriente eléctrica 3.3V: 50MA

* 14 pines de I/O digitales (6 salidas PWM)

* 8 entradas analógicas

* Memoria Flash de 32k

* 16Mhz Clock Speed

![image](https://user-images.githubusercontent.com/61272141/117012393-2f8f1700-acef-11eb-97a6-3ca5477210dc.png)

#### L298N
Es un driver dual basado en el chip L298N. Permite controlar dos motores de corriente continua (DC) o un motor bipolar. Cuenta, como la mayoría de los componentes, con sistemas de seguridad y diodos de protección, encargados de impedir que cargas superiores a las soportadas circulen por el componente. Incluye también un regulador de tipo LM7805, encargado de alimentar la parte lógica del módulo con 5v constantes. El módulo cuenta con cuatro salidas para los motores (OUT 1, OUT 2, OUT 3, OUT 4) a las cuales puedes conectar dos motores DC con sus respectivos positivos y negativos. Tras estos encontramos los pines de control. Se pueden dividir en pines de control de módulo ( IN1, IN2, IN3, IN4) y pines ENA y ENB. Estos segundos se conectaran al Arduino para variar la velocidad de los motores mediante la programación, o bien se les colocará un jumper de alimentación, de forma que la velocidad no se podrá modificar. En cuanto a la alimentación, encontramos tres pines, +12v, GND, +5v. Gracias al regulador LM7805 integrado, encontramos dos posibles métodos de conexión:

* Con el jumper activado. Se podrán conectar voltajes de entre 6v y 12v al pin +12v. Como el jumper se encuentra activo, en el pin +5v obtendremos 5v de salida, que utilizaremos para alimentar el Arduino.
* Con el jumper desactivado. Se podrán conectar voltajes al pin +12v de entre 12v y 35v. Pero, a diferencia del método anterior, tendremos que alimentar la parte lógica del      módulo conectándole 5v externos adicionales a través del pin +5v.

![image](https://user-images.githubusercontent.com/61272141/117013065-cf4ca500-acef-11eb-9b72-57aa7cf134b2.png)

#### TCS34725
El TCS34725 es un sensor de color digital que podemos emplear con un procesador como Arduino para obtener los medir los valores RGB del color de un objeto o luz.
El TCS34725 es un integrado completo que realiza un tratamiento digital de la medición de color, proporcionando los valores RGB y Clear. La comunicación con el sensor se realiza por I2C por lo que su lectura desde un procesador como Arduino es muy sencilla. Incorpora un filtro de infrarrojos, lo que mejora su precisión ante el ruido del entorno. El tiempo de medición y la ganancia es ajustable por software. Dispone de una amplia sensibilidad y un amplio rango dinámico de 3.800.000:1, pudiendo funcionar incluso tras un cristal oscuro.
Puede incorporar un LED de luz neutra (4150°K) junto con un MOSFET integrado para su control, por lo que podemos controlar el encendido del LED desde el código.
Además de la comunicación I2C, el TCS34725 incorpora un pin de interrupción junto con un umbral inferior y superior. Cuando el nivel de luz está fuera del rango de los umbrales, el TCS34725 genera una interrupción que permanece activa hasta que es reseteada por el controlador.

![image](https://user-images.githubusercontent.com/61272141/117014693-551d2000-acf1-11eb-892f-b355cc7d90c6.png)

## Software
El software se va a desarrollar a través del ELEGOO UNO R3 de Arduino. Como punto de inicio se han desarrollado programas individuales para los distintos componentes con el fin de obtener los parámetros necesarios para la futura programación definitiva.

Comenzamos con el driver controlador del motor L298N.
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/ec955a9c2ded66fa85a7202d154389a30168d562/C%C3%B3digo%20L298N

Con este sencillo programa, lo que se ha conseguido es verificar el correcto funcionamiento tanto del motor como del driver, así como confirmar que los pines escogidos son válidos. En un primer lugar declaramos los pines utilizados, para más adelante declararlos como salida, ya que solo recibiran información. En el void loop del programa se determina el sentido de giro mediante los pines IN1 y IN2. Sin embargo lo que conseguimos mediante el ENA es variar la velocidad de giro del motor. 

Programación de prueba del TCS34725.
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/2be4f229ad31fd3647c34dcb0a15312eaac23c27/C%C3%B3digo%20sensor%20Adafruit



Con este programa, al igual que con el anterior y el que viene a continuación, verificamos el correcto funcionamiento del componente.  Como se puede observar, primeramente declaramos la librería que vamos a utilizar, lo que nos permite simplificar en gran medida nuestro programa. SE declaran los pines y la funcion setup y loop.

Programación para que el programa en Visual del ordenador de coordine con el de arduino. Este va unido a los otros dos códigos.
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/f74104ecd539d0a3254735e6117c73ec6cb3b40b/Arduino_final.ino

#### Código en C
Por su parte el código en Visual desd el cual el usuario interactua con el seguidor de líneas a través del arduino es el siguiente:
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/a63d5577d31fb7bfcc589efc5bca99fcc9bc501f/Principal.cpp
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/a63d5577d31fb7bfcc589efc5bca99fcc9bc501f/SerialClass.cpp
https://github.com/aigora/twIA_2021-seguidor-de-lineas-de-colores/blob/a63d5577d31fb7bfcc589efc5bca99fcc9bc501f/SerialClass.h


\newpage

# [SENSOR IDENTIFICADOR] :: twIA_2021-sensor_identificador

[Un sistema de control de acceso de usuarios y sanitario que es autónomo y requiere una identificación y temperatura adecuada para acceder a un centro privado.]

## Integrantes del equipo

[Guillermo Rosales Pérez GuillermoRosale5.]
[Daniel van Reenen DanielvanReenen.]

Nota: en el transcurso del proyecto varios compañeros decidieron dejar de lado la asignatura, los 2 que quedan son los que finalmente realizaron el proyecto.

## Descripción del trabajo

[Hemos decidido hacer un sistema para que un usuario acceda a un supuesto edificio o sala restringida de forma controlada, teniendo un registro de la temperatura, hora y usuario que ha entrado en cada momento. Para ello aplicaremos un codigo de registro desarrollado en visual studio y un sistema de control de sensores en la plataforma de Arduino.]

## Objetivos del trabajo

[El objetivo principal es garantizar la seguridad fisica y de salud de los profesionales del edificio o la sala restringida.]
\newpage

# Sistema de mezcla de liquidos :: twIA_2021-sistema-de-mezcla-de-liquidos

El proyecto consiste en un sistema automatizado de mezcla de liquidos en el cual el consumidor elige el refresco que desea tomar entre los posibles.

## Integrantes del equipo

Pedro Álvarez Monteagudo(pedro-alvarez-monteagudo)

Alejandro Bonilla Hervás(alejandro-bonilla)

Álvaro Gómez Agudo(alvarogomez29)

Mario Fernández Liétor(mario1910)

Nuria Garrido Giménez(nuria0509)



## Objetivos del trabajo

Diseñar y desarrollar un sistema dispensador de  varios líquidos programado en lenguaje avanzado C++  que permita realizar diferentes mezclas previamente programadas con dichos líquidos mediante un sistema de microválvulas.


## Objetivos principales
-Crear una maqueta que simule una máquina de mezcla de líquidos.

-Realizar un programa en el que el ordenador sea el intermediario entre la mezcla deseada y el sistema (válvulas).

-Regular el flujo de los líquidos mediante un conjunto de microválvulas.

-La eleccion entre tres posibles recipientes.

-Controlar la cantidad de líquido contenida en dicho recipiente.
\newpage

# [Coche teledirigido con corrección] :: twIA_2021-space_upm

Coche teledirigido remotamente, que corrija la trayectoria del usuario en base a los obstáculos que detecte.

## Integrantes del equipo

[Nombres, apellidos, y usuario GitHub de los integrantes del equipo.]
Lucas Gómez Velayos Lucas-Go-Vel (Puede aparecer también como Pigamer37)
Iker Castiella Aguirrezabala "Ikercasti"
Cristina Boned Juncal "Crisboned"1.0
Pablo Garrudo Delgado "Garrudo-404"
Daniel fuertes González, Daniel

## Objetivos del trabajo

[Lista de los objetivos que se persiguen con el trabajo propuesto.]
\newpage

# Vehículo autónomo  :: twIA_2021-vehiculo_autonomo

Se llevará a cabo el proyecto de un vehículo automatizado cuyo funcionamiento será similar al de un camión de bomberos. Además, será capaz de detectar posibles obstáculos por sí mismo y su movimiento se controlará por Bluetooth. Se empleará la plataforma "Arduino".

## Integrantes del equipo


1. Omar Ftouh: [@OmarFL](https://github.com/OmarFL)

2. Eugenio Fernández: [@Eugenio-Fernandez](https://github.com/Eugenio-Fernandez)

3. David Gallego: [@Gallego1502](https://github.com/Gallego1502)

4. Juan Pablo De Miguel: [@juanpablodemiguel](https://github.com/juanpablodemiguel)

5. Iván Guerrero: [@ivanguerrero2002](https://github.com/ivanguerrero2002)


## Objetivos del trabajo


- Ser capaces de desarrollar un sistema automatizado y programado para que realice ciertas funciones o tareas
- Controlar cuándo el vehículo acelerará o se detendrá, así como su dirección, a través de un control remoto vía bluetooth

