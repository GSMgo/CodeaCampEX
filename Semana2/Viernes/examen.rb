# 1.
  # Tipos de Datos
  # ¿Qué tipo de datos son cada una de las siguientes variables?
  # ¿De que clase es cada uno y como lo puedes comprobar?
  v = 9.0
  w = ["1", "f", 4]
  x = 1.4
  y = "3"
  z = {name: "Javier", email: "mail@codea.mx", fase: 1}
  # Respuesta
  ...
  v = valor flotante (Float)
  w = arreglo con dos strings y un entero (Array)
  x = valor flotante (Float)
  y = string (String)
  z = hash (Hash)

  Para comprobar que las variables pertenecen a una clase, se puede utilizar el método 'is_a?(class)', 
  o simplemente igualar las variables al tipo de clase para obtener si es 'true' o 'false'

# 2.
  #Arrays
  # Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
  fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
  # Respuesta
    fruits[3]
    fruits[1] = "strawberry"
  ...

  # Obtén el último elemento de la lista `sports`.
  sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
  # Respuesta
    sports.last

  ...
  # Añade un elemento más al principio de la lista `gadgets`.
  gadgets = ["smartphone", "laptop", "tablet"]
  # Respuesta
    gadgets.insert(0, "smartwatch")
  ...

# 3.
  # Hashes
  # Crea la variable my_hash e inicialízala a un Hash vacío.
    my_hash = Hash.new

  # Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
    grades = {
      Matematicas: 8,
      Español: 9,
      Ingles: 7
    }
  # A la variable grades del ejercicio anterior agrégale una materia más con su calificación correspondiente.
    grades[:Programacion] = 10

  # Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
    highest_grade = grades.values.max


# 4.
  # If/else
  # Crea el método large_word que nos diga si una palabra tiene muchas letras. Si la palabra tiene más de 6 letras regresa el string "Large", y si es menor "Small".
    def large_word(string)
      unless string.length <= 6 
        a = "Large" 
      else 
        "Small"
      end     
    end

# 5.
  # Loop
  # Crea el método print_plus_ten que reciba un arreglo de números, e imprima la suma de cada número más 10.
      def print_plus_ten(array)
        array.each do |x| 
          puts x + 10
        end
      end

  # Crea el método plus_ten_array muy parecido al ejercicio anterior, con la diferencia que no imprime los números sino que regresa un nuevo arreglo con los elementos del primer array más 10.
    def plus_ten_array(array)
      cont = 0
      array.each do |x| 
        array[cont] = x + 10
        cont += 1 
      end
    end
    # Pruebas
    plus_ten_array([4,3,7]) == [14, 13, 17]

# 6.
  # Métodos
  # Crea el método odd_or_even_plus, que recibe dos argumentos: min y max. Regresa un arreglo donde si el número es par le suma 2 y si es non le suma 3
    def odd_or_even_plus(min,max)
      arr = []
      cont = 0
      for i in min..max
          arr.push(i)
      end
      arr.each do |x|
        if x % 2 == 0
          arr[cont] = x + 2
          cont += 1
        else
          arr[cont] = x + 3
          cont += 1
        end
      end
    arr
    end
  # Pruebas
  odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]

  Lesson_summary = {typeable_characters: 463, typed_characters: 547, unproductive_keystroke_overhead: "18%", elapsed_time: "3:10", wpm: 29}