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

5. Euchan kang-dinner123

## Objetivos del trabajo

1. Diseño y desarrollo de un guante electrónico, capaz de dirigir las funciones de un brazo robótico.
2. Desarrollar y programar un programa funcional (en C) que permita utilizar dicho guante como un controlador del brazo.
3. Aplicar el uso de sensores y hardwares que faciliten al mecanismo y funcionamiento del guante, a través de programas como Arduino.   

## Objetivos

El brazo robótico controlado por un guante, se inspira en los brazos automatizados utilizados en las industrias. Nuestro objetivo con este proyecto es crear un brazo que sea capaz de responder a los movimientos de nuestra mano. Para ello, diseñaremos nosotros mismos un guante que se adapte a nuestra mano. Este guante estará construido por distintos hardwares, como cables, sensores... El software que vamos a utilizar es C++ y Arduino. El guante estará conectado al brazo robótico via bluetooth, lo que será más fácil para el usuario. El brazo se moverá de forma que al realizar un movimiento vertical, horizontal... con nuestros dedos, las articulaciones del brazo también se muevan respecto al movimiento realizado por el usuario. Para finalizar someteremos a nuestro brazo robótico a una prueba. Esta prueba consistirá en saber si nuestro brazo es capaz o no, de mover y coger objetos de forma eficiente.

## Movimiento del brazo
1. Pinzas:
La pinza es controlada con los botones localizados en el dedo medio y meñique. La pinza se cierra apretando el índice con el dedo medio. Para abrir la pinza apretamos el dedo medio con el meñique.
2. Muñeca:
La muñeca es controlada con una resistencia flexible en el dedo índice. Doblar este dedo hasta la mitad provocará que la muñeca del robot baje, doblarlo del todo hará que este  suba.
3. Codo:
El codo es controlado con un acelerómetro. Girar la palma hacia arriba o hacia abajo mueve el codo del robot en la dirección respectiva.
4. Hombro:
Controlado por un acelerómetro girar la palma hacia la derecha o hacia la izquierda mueve el hombro en la dicección respectiva. 
5. Base:
También controlado por un acelerómetro muy parecido al hombro o el codo. Girar la palma hacia la derecha o izquierda mientras la palma se mantiene en hacia arriba mueva la base del robot hacia la derecha o hacia la izquierda. 

Cada una de estas partes serán controladas con el uso de un guante que controlaremos manualmente con nuestra mano.
Dependiendo de la extremidad que movamos de la mano, se interactuará con las distintas partes de nuestro brazo robótico.

## Identificador de sensores y actuadores

ACTUADORES

El actuador del que vamos a hacer uso para que el brazo robot se mueva es el servomotor. El servo es un accionador muy común que permite el desplazamiento en un rango de movimiento de 180 grados. La ventaja del servo reside en esta característica pues se le indica directamente el ángulo deseado. Internamente el servo suele contar con un mecanismo reductor que proporciona un alto par y una gran precisión. Sin embargo; la velocidad de actuación o de giro son pequeñas. Los servos admiten una tensión de entre 4,8 y 7,2 voltios, aunque lo ideal son 6 voltios. Con ellos podremos controlar la posición.

SENSORES

Por otro lado, usaremos acelerómetros, dispositivos que miden la aceleración (la variación de la velocidad respecto del tiempo). Los acelerómetros cuentan con una masa suspendida en su interior mediante muelles. De esta forma, al aplicar un movimiento, la masa se mueve y provoca la elongación y la contracción de los muelles. El desplazamiento de la masa interna permite determinar la aceleración. Los acelerómetros son capaces de medir en los tres ejes (x, y, z).

Emplearemos botones o pulsadores, sensores de lo más simple pues solo tienen dos estados. Estos detectan si están siendo pulsados (se ejerce presión sobre ellos) o si no lo están, de manera que el programa pueda actuar en consecuencia. 

Por último, una resistencia flexible. Este sensor, aumenta su resistencia al ser flexionado. Cuando se dobla el sustrato del sensor produce una salida de resistencia en relación con el radio de curvatura. El sensor flex, con una flexión de 0° dará la resistencia de 10K y con una flexión de 90° dará entre 30 a 40 K ohmios.
\newpage

# [Papelera] :: twIA_2021-caja_fuerte

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
-Mando original 1) guante con sensores de flexión 
                2) joystick y pequeña estructura-
-Opción de guardar partidas para poder continuar una partida en otro momento-
-Puntuaciones más altas y nombre de los jugadores-
-Sonido?
-Juego secundario: Buscaminas (si da tiempo)
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

[proyecto informática[780].pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6326050/proyecto.informatica.780.pdf) :: twIA_2021-fabrica_de_colorines
# CLASIFICADOR DE COLORES

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
[proyecto informática[780].pdf](https://github.com/aigora/twIA_2021-fabrica_de_colorines/files/6326051/proyecto.informatica.780.pdf)

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

# Registro CoVid-19 y vacunaciones :: twIA_2021-info


## Integrantes del equipo

Marcos Simón Romay @marcossssss

Carlos Loarte Hernández @loarte

Natalia Joueidi Mashlab @nataliaaaajm

María Castro De la Villa @mariacdl

## Objetivos del trabajo

El programa que vamos a realizar trata sobre un plan/registro de vacunación del COVID-19, donde dividimos a las personas en varios grupos. Por una parte, queremos añadir también un sistema de seguridad para acceder a la información de cada paciente. Una vez introducida la clave correcta y dentro del sistema, crearemos un menú donde el usuario podrá seleccionar la opción a la que desea acceder. Este menú estará dividido por edades, si padece o no enfermedades, preferencias para el orden de vacunación, si ya tienen la primera dosis puesta,etc. 
Para diseñar y desarrollar este programa vamo a utilizar el lenguaje C ++ que realice todas las indicaciones previamente programadas. y además de ello utilizaremos herramientas como Arduino, ya que dependiendo de si ocurren ciertos hechos se encenderán unas luces led que significaran una cosa u otra.
\newpage

# Jardin automatizado :: twIA_2021-jardin_automatizado

Trataremos de medir y controlar la temperatura, humedad... de un pequeño jardín.

## Integrantes del equipo

Luis Vicente Gordón---@LuisVicenteGordon

Javier Monrió García---@javiermonrio

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
    *   [pulsador](#pulsador)
* * *

## en que consiste ## 
Crear un juego de Ping Pong en el que el movimiento de las raquetas sea controlado por sensores ultrasonidos.
En el juego habrá diferentes niveles de dificultad.
También apareceran elementos en mitad del terreno de juego que si son golpeados incrementarán la puntuación del jugador responsable.

## *Integrantes del equipo* ##

Javier Alonso Geijo (Usuario de GitHub(javieralonso1)),
Alberto Cámara López (Usuario de GitHub(AlbertoCL22)),
Carlos García López-Corona,
Sergio Cantalejo Villasante (Usuario de GitHub(SergioCantalejoVillasante)) y 
Pablo García de Lucas (Usuario de GitHub(PabloGarciadeLucas))

## Objetivos del trabajo

Aprender a programar en C++. Aprender a convertir el lenguaje de C++ a otros lenguajes (en este caso Arduino). Programar una inteligencia artifcial para cuando solo juegue un jugador. Aprender a usar y programar sensores como en este caso los ultrasonidos y pulsador.
JUEGO DEL PONG 
## Objetivo
Diseñar y desarrollar una aplicación en lenguaje C con el cual podamos jugar al ping pong mediante unos sensores de ultrasonido, el juego lleva por nombre Ultrapong.
Especificaciones del juego
Pong (o Tele-Pong) fue un videojuego de la primera generación de videoconsolas publicado por Atari, creado por Nolan Bushnell y lanzado el 29 de noviembre de 1972. Pong está basado en el deporte de tenis de mesa (o ping pong). La palabra Pong es una marca registrada por Atari Interactive, mientras que la palabra genérica «pong» es usada para describir el género de videojuegos «bate y bola». La popularidad de Pong dio lugar a una demanda de infracción de patentes y ganada por parte de los fabricantes de Magnavox Odyssey, que poseía un juego similar. Es un juego de deportes en dos dimensiones que simula un tenis de mesa. El jugador controla en el juego una paleta moviéndola verticalmente en la parte izquierda de la pantalla, y puede competir tanto contra un oponente controlado por computadora, como con otro jugador humano que controla una segunda paleta en la parte opuesta. Los jugadores pueden usar las paletas para pegarle a la pelota hacia un lado u otro. El objetivo consiste en que uno de los jugadores consiga más puntos que el oponente al finalizar el juego. Estos puntos se obtienen cuando el jugador adversario falla al devolver la pelota.

###### Dinámica de la aplicación


menú | 
------------ | 
1-Iniciar partida | 
2-Pausar/reanudar partida  |
3-Mostrar puntuación  | 
4-Abandonar la partida| 


## * _Opción 1 - Iniciar partida_
Primero se deberá elegir entre un jugador o dos. Acto seguido se deberá introducir el nombre de usuario para comenzar la partida. El juego no se iniciará si sendos jugadores tienen el mismo nombre de usuario.
Al elegir 1 jugador este se enfrentará contra la IA, contando esta con varias dificultades desde las más fáciles hasta las más difíciles.

## * -Opción 2 - Pausar/reanudar partida_
Si se desea parar la partida uno de los usuarios, pulsará un botón y la partida se para, al reanudar la partida, el programa cargará los datos almacenados en el fichero de texto y la partida continuará en el punto en el que fue interrumpida.

## * _Opción 3 – Mostrar puntuación 
Mostrará en pantalla la puntuación de los jugadores, al jugador que más puntos haya anotado se le asignará un tag que pondrá MVP (Most valuable player).

## * _Opción 4 – Abandonar partida_
El programa se finalizará dando la victoria al contrario.
Especificación de requisitos obligatorios
El juego contara con bonificaciones aleatorias para el jugador que este ganando, y así complicar la remontada al jugador que vaya por detrás en la partida.
Contaremos con la opción de seleccionar el usuario que queramos usar, para continuar con nuestro progreso en la partida previamente guardada.
El programa cargará los datos de los usuarios desde el fichero al iniciarse la aplicación y almacenará la información en el fichero.
Especificaciones de requisitos adicionales
Podremos guardar varias partidas, de tal manera el usuario escribirá save (nombre), para guardar la partida en dicho fichero.
Contaremos con un jugador predeterminado, la IA el cual tendrá varias dificultades y estrategias que utilizará para ganarnos.



 ## Identificación sensores y actuadores
Para el trabajo precisaremos de sensores de ultrasonido para controlar “las raquetas”, y de un botón con el cual pausemos la partida cuando queramos.
## Medida de la distancia - Sensor ultrasonidos HC-SR04
Queremos controlar las raquetas mediante los ultrasonidos, es decir, de forma que según movamos la mano estas se muevan a la izquierda o a la derecha.
Un sensor de ultra sonidos es un dispositivo para medir distancias. Su funcionamiento se base en el envío de un pulso de alta frecuencia, no audible por el ser humano. Este pulso rebota en los objetos cercanos y es reflejado hacia el sensor, que dispone de un micrófono adecuado para esa frecuencia.
Midiendo el tiempo entre pulsos, conociendo la velocidad del sonido, podemos estimar la distancia del objeto contra cuya superficie impacto el impulso de ultrasonidos
Los sensores de ultrasonidos son sensores baratos, y sencillos de usar. El rango de medición teórico del sensor HC-SR04 es de 2cm a 400 cm, con una resolución de 0.3cm. En la práctica, sin embargo, el rango de medición real es mucho más limitado, en torno a 20cm a 2 metros.
Los sensores de ultrasonidos son sensores de baja precisión. La orientación de la superficie a medir puede provocar que la onda se refleje, falseando la medición. Además, no resultan adecuados en entornos con gran número de objetos, dado que el sonido rebota en las superficies generando ecos y falsas mediciones. Tampoco son apropiados para el funcionamiento en el exterior y al aire libre.
Pese a esta baja precisión, que impide conocer con precisión la distancia a un objeto, los sensores de ultrasonidos son ampliamente empleados. En robótica es habitual montar uno o varios de estos sensores, por ejemplo, para detección de obstáculos, determinar la posición del robot, crear mapas de entorno, o resolver laberintos. En aplicaciones en que se requiera una precisión superior en la medición de la distancia, suelen acompañarse de medidores de distancia por infrarrojos y sensores ópticos.
 ## CÓMO FUNCIONA UN SENSOR DE ULTRASONIDOS
El sensor se basa simplemente en medir el tiempo entre el envío y la recepción de un pulso sonoro. Sabemos que la velocidad del sonido es 343 m/s en condiciones de temperatura 20 ºC, 50% de humedad, presión atmosférica a nivel del mar. Transformando unidades resulta

 

Es decir, el sonido tarda 29,2 microsegundos en recorrer un centímetro. Por tanto, podemos obtener la distancia a partir del tiempo entre la emisión y recepción del pulso mediante la siguiente ecuación.

 

El motivo de divir por dos el tiempo (además de la velociad del sonido en las unidades apropiadas, que hemos calculado antes) es porque hemos medido el tiempo que tarda el pulso en ir y volver, por lo que la distancia recorrida por el pulso es el doble de la que queremos medir.
EJEMPLO DE CÓDIGO
 SIN LIBRERÍAS
Para activar el sensor necesitamos generar un pulso eléctrico en el pin Trigger (disparador) de al menos 10us. Previamente, pondremos el pin a Low durante 4us para asegurar un disparo limpio.
Posteriormente usamos la función "pulseIn" para obtener el tiempo requerido por el pulso para volver al sensor. Finalmente, convertirmos el tiempo en distancia mediante la ecuación correspondiente.
Observar que intentamos emplear siempre aritmética de enteros, evitando usar números en coma flotante. Esto es debido a que las operaciones en coma flotante ralentizan mucho el procesador, y suponen cargar un gran número de librerías en memoria.
const int EchoPin = 5;
const int TriggerPin = 6;
 
void setup() {
   Serial.begin(9600);
   pinMode(TriggerPin, OUTPUT);
   pinMode(EchoPin, INPUT);
}
 
void loop() {
   int cm = ping(TriggerPin, EchoPin);
   Serial.print("Distancia: ");
   Serial.println(cm);
   delay(1000);
}
 
int ping(int TriggerPin, int EchoPin) {
   long duration, distanceCm;
   
   digitalWrite(TriggerPin, LOW);  //para generar un pulso limpio ponemos a LOW 4us
   delayMicroseconds(4);
   digitalWrite(TriggerPin, HIGH);  //generamos Trigger (disparo) de 10us
   delayMicroseconds(10);
   digitalWrite(TriggerPin, LOW);
   
   duration = pulseIn(EchoPin, HIGH);  //medimos el tiempo entre pulsos, en microsegundos
   
   distanceCm = duration * 10 / 292/ 2;   //convertimos a distancia, en cm
   return distanceCm;
}

Fuente: https://www.luisllamas.es/medir-distancia-con-arduino-y-sensor-de-ultrasonidos-hc-sr04/
El principal inconveniente que encontramos es que la lectura de distancias implica bloquear la ejecución del programa mientras esta se lleva a cabo impidiendo que la aplicación realice acciones adicionales mientras espera la medida, además que en el ejemplo que hemos puesto precisamos de, cada sensor requiere dos pines del microcontrolador (Echo y Trigger)
## Pulsador

El funcionamiento básico de un botón es muy sencillo. Básicamente se conecta a un pin digital con el que leerás un 0 o un 1 dependiendo de si lo pulsas o no.
Hay dos formas de conectarlo. El primer tipo de conexion, con la que recibes un 1 cuando pulsas el botón y un 0 cuando no está pulsado. A lo largo del tutorial nosotros vamos a utilizar este tipo de conexión. Sin embargo, vamos a explicar rápidamente como funcionan ambas conexiones por si acaso necesitas saberlo


## Diseño sistema

#include <stdio.h>

#include <locale.h>

#include <stdlib.h>

#include<malloc.h>

int main_menu(void);

void configura(void);

int main()
{
    int menu;
    //configuracion y carga
    configura();
    //bucle ppal
    do
    {
        menu = main_menu();
        switch(menu)
        {
        case 1:break;
        case 2:break;
        case 3:break;
        case 4:break;
        case 5:break;
        }
    } while (menu != 5);
    //desconexion y cierre
}
int main_menu(void)
{
    int option;
    do
    {
        printf("1- Comenzar partida:\n");
        printf("2- \n");
        printf("3- \n");
        printf("4- \n");
        printf("5- Cerrar el juego\n");
        printf("Seleccione una opcion:\n");
        scanf_s("%d", &option);
        if (option < 1 || option>5);
        printf("\nSeleccione una opcion valida, porfavor\n");
    } while (option < 1 || option>5);
    return (option);
}
void configura(void)
{
    setlocale(LC_ALL, "spanish");
}

\newpage

# [Título del trabajo] :: twIA_2021-lector_de_textos

[Descripción breve del proyecto a realizar (2-3 frases).]

## Integrantes del equipo

[Nombres, apellidos, y usuario GitHub de los integrantes del equipo.]

## Objetivos del trabajo

[Lista de los objetivos que se persiguen con el trabajo propuesto.]
\newpage

# LPS - Localizador Ultrasónico :: twIA_2021-localizador-ultrasonidos

El LPS o Localizador Ultrasónico es un sistema de posicionamiento local de objetos dentro de un espacio cerrado, através de la utilización
de diferentes sensores ultrasonidos, gracias a los cuales conseguiremos medir varias distancias al objeto desde diferentes posiciones
dentro del espacio cerrado, y asi situarlo dentro de este. Este sistema podría parecerse a un GPS convencional para interiores.

## Integrantes del equipo
<strong>Nombre            -            Usuario</strong>
<br />Antonio García Montes - antoniogmontes
<br />Joaquín Gabriel Huirse - 
<br />Jorge Riveiro - j-riveiro
<br />Sergio Rodriguez - Srsanz
<br />Javier Gasco - j-gasco


## Objetivos del trabajo

Mediante la realización un trabajo cooperativo aplicar los conocimientos de computación aprendios y familiarizarnos con ellos, y a su
vez aprender nuevas utilidades y herramientas para realizar sistemas o aparatos complejos. Un ejemplo de ello sería la implementación 
de placas de Arduino o la incorporación de sistemas externos como los sensores ultrasonidos.
Para ello planearemos los pasos a seguir y escribiremos el codigo necesario para el relizar el sistema o aparato propuesto.

## Plantilla

La base del recinto cerrado la dividiremos en una cuadrícula de tal manera que luego con la distancia de los sensores podremos obtener 
en que casilla se encuentra nuestro objeto.

## Ultrasonidos

Con estos sensores de ultrasonidos, detectaremos la distancia a la que se encontrará el objeto dentro del recinto cerrado. Una vez
que tenemos la distancia, mediante una serie de bucles obtendremos la casilla en la que se encuentra el objeto, de ese modo podremos 
imprimir en la pantalla la localización de nuestro objeto. 

## Actuadores y sensores

Para la realización del proyecto , el principal sensor que  utilizaremos sera el sensor de ultrasonido que mide las distacias con el uso de  ondas ultrasónicas inaudibles para el oido humano que rebotan en los objetos que se encuentren a cierta distancia  del sensores.
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

Diseñar y desarrollar un multímetro capaz de hacer lecturas de corriente, voltaje y resistencia de cualquier circuito o elemento (resistencias), pasar las lecturas al ordenador y que se queden guardadas en un fichero.

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
El TP4056 es un chip encapsulado en formato SOP-8, adecua la entrada de energía para el estándar 1A y también puede controlar la temperatura. tambien habria falta para su funcionamiento, un puerto miniUSB para alimentar la batería a través de cables, LEDs de carga y de completado que avisan cuando está cargado y cuando se ha terminado el proceso, y BAT+/BAT- que son bornes de salida que irán conectados a los bornes de la batería que necesitamos cargar.
fuente:https://www.hwlibre.com/tp4056/

### Pulsadores  
Son componentes eléctricos que permiten o no el paso de la corriente dependiendo de si están accionados o no. Al presionarlo se abrirá o cerrará, y para que vuelva a su estado original habrá que realizar el mismo procedimiento.  En nuestro caso, los pulsadores los utilizaremos para seleccionar qué magnitudes queremos que mida nuestro multímetro y en qué escala concreta se van a realizar estas medidas. Por ejemplo, si necesitamos medir amperios en una escala de mA presionaremos los pulsadores uno y cuatro; realizando el mismo proceso para medir el voltaje y la resistencia. A parte tendremos otro pulsador que servirá para encender el multímetro, encendiendo un led cuando esté en la posición que permita el paso de corriente al circuito y así poder diferenciar los estados de on y off.  Fuente: https://www.areatecnologia.com/electricidad/pulsador.html

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
 2. Aitana Martínez Gayà -  aitana-martinez .
 3. Natalia Miguel Cuenca -  nataliamiguel .
 4. Carolina Plaza -  carolplaza .
 5. Marta Sánchez Ferrer-  marta-sferrer .

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


\newpage

# [PLOTTER - LECTOR] :: twIA_2021-plotter-lector
Se va a crear un plotter para poder imprimir distintos tipos de información y por otro lado un lector que sea capaz de leer la informacion impresa y devolverla a la forma original

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
## WIKI  
*[Descripción](https://github.com/aigora/twIA_2021-plotter-lector/wiki/Descripci%C3%B3n)*
- *[Lista de objetivos](https://github.com/aigora/twIA_2021-plotter-lector/wiki/Lista-de-objetivos)*
- *[Datos de entrada](https://github.com/aigora/twIA_2021-plotter-lector/wiki/Datos-de-entrada)*
- *[Datos de salida](https://github.com/aigora/twIA_2021-plotter-lector/wiki/Datos-de-salida)*
- *[Diagramas](https://github.com/aigora/twIA_2021-plotter-lector/wiki/Diagramas)*
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

# [Nombre por decidir] :: twIA_2021-rol-unity-c

El proyecto consta de un juego hecho en el motor grafico Unity con el aspecto del codigo desarrollado en c++, ademas, el juego contara con un mando propio para jugarlo. Sera un juego tipo MMO, con mapa y cosas tipicas del genero. En cuanto al mando/controlador, esta por decidir si se hace algun tipo de teclado casero o mando estilo consola. 

## Integrantes del equipo:

- Yikai Zhan
- Diego Ramírez Peinado
- Carlos Mendoza Carpintero
- Miguel Ángel Pascual Collar
- Pablo Martínez-Conde Albizu
- Uberto Alejandro Martínez Rodríguez

## Objetivos del trabajo:

Crear un juego totalmente funcional con un mando diseñado por nosotros, el mando debe ser capaz de ejecutar todas las acciones que diseñemos para dicho juego, y el juego debe obedecer lo que nosotros queramos que este haga a traves de las acciones del mando. Por ahora queremos que el juego tenga movimiento, y dentro de un pequeño mapa tengamos varios objetivos para que el jugador cumpla, vaya consiguiendo recompensas, enfrentandose a enemigos, o hable con algun tipo de npc(non playable character), se añadira un inventario, algun tipo de historia de duracion indefinida ya que por ahora no sabemos cuanto nos llevara hacer todo lo que queremos hacer. Por ultimo se le añadira una funcion para guardar el progreso actual en el momento deseado. Si vemos que nos da tiempo a añadir mas cosas o se nos ocurre algo se añadira a dichos objetivos.
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
\newpage

# [SENSOR IDENTIFICADOR] :: twIA_2021-sensor_identificador

[Un sistema de identificacion mediante temperatura e identificadores NFC para acceder a una sala a traves de una puerta electronica.]

## Integrantes del equipo

[Guillermo Rosales Pérez GuillermoRosale5.]
[Manuel Sánchez Francés manusanchezf.]
[Daniel van Reenen DanielvanReenen.]
[Patricio Juan Peñalaver Carvajal Patriciopenalver.]
[Jaime Muñoz Mejías jmunozm2.]
[Natalia Rodriguez Molina nataliarodriiguez.]

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

