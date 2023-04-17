#!/bin/bash
# La linea '1' indica que el fichero ejecuta script de shell 'bash'

# ARGUMENTOS SCRIPT
    # Imprimir por salida estandar (pantalla) -> (echo)
    # Las dobles comillas ("") permiten parametros.
    # Imprimir saltos de linea -> opcion (-e) y caracter especial (\n)
    # Número de argumentos del script.
        echo -e "\n(#) Numero de argumentos: $#"
    # Cadena de texto con los argumentos del script.
        echo "($) Argumentos: $*"
    # Ruta del script
        echo "(0) Ruta del script: $0"
    # Cada uno de los argumentos de un script (1,2,3,etc)
        echo "(1) Valor argumento 1: $1"
    # PID del script
        echo "($) PID: $$"

# VARIABLES DE ENTORNO
    # Mostrar todas las variables de entorno para esta sesion -> (printenv)
        # Con sesión nos referimos a terminal abierto.
    # Modificar variables de entorno: export PS1="\u@\h\$"

    # Variables de entorno más utilizadas
        # Directorio del usuario
            echo -e "\n(HOME) Directorio casa usuario: $HOME" 
        # Directorio actual
            echo "(PWD) Directorio actual: $PWD"
        # Equivale al prompt (indicador del sistema) del interprete de comandos
            echo "(PS1) Interprete: $PS1" 
        # Camino de búsqueda de archivos ejecutables
            echo "(PATH) Ruta archivos ejecutables: $PATH" 
        # Usuario de la sesión actual
            echo "(USER) Usuario de la sesion: $USER" 
        # Shell usada por el script
            echo -e "(SHELL) Shell usada por el script: $SHELL\n"

# ENTRADA Y SALIDA ESTANDAR
    # Leer por entrada estandar (teclado) -> (read)
    # Las variables no se declaran previamente al usar (read).

        # Ejemplo 1
            # las simples comillas ('') es todo literal.
            # No imprimir salto de linea -> opcion (-n)
            echo -n 'Introduce tu nombre: '
            #read nombre
            echo "Tu nombre es $nombre"

        # Ejemplo 2
            # No imprimir salto de linea, imprimir y leer en la misma linea, permitir >1 parametro -> opcion (-p)
            #read -p "Introduce tu apellido 1 y edad separado por un espacio: " palabra numero 
            echo "Tu primer apellido es ($palabra) y tienes ($numero1) años"

# VARIABLES
    nombre="Rosa"
    numero1=24
    echo "($nombre) tiene ($numero1) años"

# OPERADORES LÓGICOS
    # and               (&&)
    # or                (||)

# EXPRESIONES
    # [Matemáticas]
        # >=            (-ge) "greater equal"  
        # >             (-gt) "greater than"
        # <=            (-le) "less equal"
        # <             (-lt) "less than"
        # !=            (-nt) "not equal"
        # ==            (-eq) "equal"
    # [Ficheros]
        # existe        (-e)
        # directorio    (-d)    
        # tamaño > 0    (-s)
    # [Permisos]
        # escritura     (-w)
        # lectura       (-r)
        # ejecución     (-x)

# ESTRUCTURAS SELECTIVAS

    # Estructura Selectiva Simple (IF)
        numero1=5

        if [ $numero1 = 5 ]
        then
            echo 'Es el numero es 5'
        fi

    # Estructura Selectiva Doble y Operadores Lógicos (IF-ELSE)
        nombre="rosa"

        if [ $nombre = "root" ] || [ $nombre = "pistacho" ]
        then
            echo 'Eres un usuario del sistema'
        else
            echo 'No eres un usuario del sistema'
        fi

    # Estructura Selectiva Multiple (CASE) "(switch) en otros lenguajes"
        numero1=10
        
        case $numero1 in
            11) echo "este año terminarás la primaria";;
            12) echo "este año comenzarás la ESO";;
            16) echo "posiblemente te graduarás en ESO";;
            18) echo "deberías estar terminando bachillerato";;
            *) echo "no tengo información suficiente para saber que hacer contigo";;
        esac

# ESTRUCTURAS REPETITIVAS/ITERATIVAS

    # For

        # Tipo 1: recorre elementos de un conjunto
            echo -e "\nfor tipo 1"
            for i in 1 2 3 4 5
            do
                echo "$i"
            done

        # Tipo 2: itera de inicio a fin (extremos incluidos)
            echo 'for tipo 2'
            for i in {1..5}
            do
                echo "$i"
            done

        # Tipo 3: Tipo 2 pero indicas el incremento del iterador "for de otros lenguajes"
            echo 'for tipo 3'
            for i in {1..5..2}
            do
                echo "$i"
            done

    # While: se repite mientras la condición sea verdadera
        echo -e "\nWhile"
        x=1
        while [ $x -le 5 ]
        do
            echo "$x"
            # Expresión matematica con "$(())"
            x=$(($x+1))
        done

    # Until "(Do-while) en otros lenguajes": se repite mientras la condición sea falsa
        echo -e "\nUntil"
        i=1
        numero1=5
        until [ $numero1 -lt $i ]
        do  
            echo $i
            # Expresión matematica con "let" (Usar esto en lugar de de '$(())')
            let i=$i+1
        done

# OPERACIONES CON DECIMALES (comando 'bc')-> usado para operaciones con decimales
    numero1=7
    numero2=2
    numeroDecimales=2
    echo -e "\nnumero1 = $numero1\nnumero2 = $numero2\nnnumeroDecimales = $numeroDecimales"
    
    numero3=$(echo "scale=$numeroDecimales; $numero1/$numero2" | bc)
    echo "$numero1 / $numero2 = $numero3"

# FUNCIONES
    # Implementación de la función 1
    function funcion1 
    {
        # Creación de variables locales dentro de una función
        local numero2=100
        echo -e "\nhola! soy la funcion 1. Eres $1\nnumero1 = $numero1\nnumero2 = $numero2"
    }
    # Llamadas a la función1
    funcion1 "Pistacho"
    funcion1 "Eladio"
    echo -e "\nnumero2 = $numero2"

# ARRAYS
    nombres[1]="ana"
    nombres[2]="pepe"
    nombres[3]="juan"
    nombres[4]="lidia"
    echo ${nombres[1]}
    echo ${nombres[*]}