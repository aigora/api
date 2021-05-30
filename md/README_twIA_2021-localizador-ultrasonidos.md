# LPS - Localizador Ultrasónico

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
