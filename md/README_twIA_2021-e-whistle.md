# E-whistle

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
