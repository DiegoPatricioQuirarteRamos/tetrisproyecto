# Tetris
##
![Tetris](https://miro.medium.com/v2/resize:fit:1400/1*26lHxJ2Icsx4BWct9-h6Tw.jpeg)

[Informacion del juego](https://tetrismania.net/)

### Personaje
* Tetronimos


#### **Descripcion del juego**
El Tetris es un juego de puzle centrado en elegir la forma idónea de las piezas que van apareciendo en la pantalla con el fin de conseguir que todas encajen, y todo ello en tan solo unos pocos segundos.
Creado por el ing. ruso Alexey Pajitnov en 1984. Es uno de los juegos más icónicos y populares en la historia de los videojuegos. La mecánica del juego es sencilla pero adictiva:

* Objetivo del Juego: El objetivo de Tetris es manipular las piezas de diferentes formas que caen del techo de la pantalla para crear líneas horizontales completas sin espacios vacíos.

* Piezas (Tetriminos): Las piezas que caen se llaman Tetriminos y están formadas por cuatro bloques cuadrados cada una. Hay siete formas diferentes de Tetriminos: I, J, L, O, S, T y Z.

* Movimiento de las Piezas: El jugador puede mover las piezas a la izquierda, a la derecha, girarlas y hacer que caigan más rápido. El jugador debe colocar estas piezas de manera que formen líneas horizontales completas.

* Líneas Completas: Cuando una línea se completa, desaparece y todos los bloques por encima de esa línea bajan un nivel. El jugador gana puntos por cada línea que completa.

* Niveles y Velocidad: A medida que el jugador completa más líneas, el juego se vuelve más rápido, aumentando la dificultad. El juego termina cuando las piezas se acumulan hasta la parte superior de la pantalla y el jugador no puede colocar más piezas.

* Estrategia: La estrategia del juego implica planificar la colocación de las piezas para maximizar la eliminación de líneas y evitar que las piezas se apilen hasta la parte superior de la pantalla.

Tetris ha sido lanzado en numerosas plataformas a lo largo de los años y ha tenido muchas versiones y variantes, manteniendo su popularidad debido a su jugabilidad simple pero desafiante

tetrisproyecto
g++ src/main.cpp src/Board.cpp src/Parts.cpp src/UI.cpp src/Sounds.cpp -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio -o Game   
ejecutar
./Game