# Conecta_4

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
