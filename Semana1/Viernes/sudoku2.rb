  class Sudoku

  def initialize(sudoku_string)
     @sudoku_string = sudoku_string
     @sudoku_array = make_sudoku_array(@sudoku_string)
     @hash_sudoku = make_sudoku_hash #cada key con 9 posibilidades
     @hash_posiciones = posicion_hash #cada key con las posiciones en array
  end

  def make_sudoku_array(sudoku_string)
     @sudoku_string.scan(/(.)(.)(.)(.)(.)(.)(.)(.)(.)/)
  end

  def make_sudoku_hash
    contador = 1
    hash_sudoku = Hash.new
    array_s1 = @sudoku_string.split(//)
    array_s1.map do |x|
      hash_sudoku[contador] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      contador += 1
    end
    hash_sudoku
  end

  def posicion_hash
    array_ciclo = @hash_sudoku.keys
    hash_posiciones = Hash.new
    contador1 = 0
    contador2 = 0
    array_ciclo.each do |x|
      if contador2 == 9
        contador2 = 0
        contador1 +=1
      end
      hash_posiciones[x] = [contador1,contador2]
      contador2 += 1
    end
    hash_posiciones
  end


#tiene que sacar el arreglo de las posibilidades de key, checar columna, checar fila y cuadrante
  def posibilidades_fila(key)
    coord = @hash_posiciones[key]
    posicion_x = coord[0]
    posicion_y = coord[1]

    cuadrante = @sudoku_array[posicion_x]
    cuadrante.each do |x|
        if @hash_sudoku[key].include?(x)
          @hash_sudoku[key].delete(x)
        end
    end
    @hash_sudoku[key]
  
  end
 #posibilidades de columnas
  def posibilidades_columna(key)
    tansp = @sudoku_array.transpose

    coord = @hash_posiciones[key]
    posicion_x = coord[0]
    posicion_y = coord[1]

    columnas = tansp[posicion_x]
    columnas.each do |x|
        if @hash_sudoku[key].include?(x)
          @hash_sudoku[key].delete(x)
        end
    end
    @hash_sudoku[key]
  end

  # posibilidades de cuadrante
  def posibilidades_cuadrante(key)

    if coordenadas(key) == 1
      x = 0
      y = 0
    elsif coordenadas(key) == 2
      x = 0
      y = 3
    elsif coordenadas(key) == 3
      x = 0
      y = 6
    elsif coordenadas(key) == 4
      x = 3
      y = 0
    elsif coordenadas(key) == 5
      x = 3
      y = 3
    elsif coordenadas(key) == 6
      x = 3
      y = 6
    elsif coordenadas(key) == 7
      x = 6
      y = 0
    elsif coordenadas(key) == 8
      x = 6
      y = 3
    elsif coordenadas(key) == 9
      x = 6
      y = 6
    end

    xx = x
    yy = y

      3.times do
        3.times do
          if @hash_sudoku[key].include?(@sudoku_array[xx][yy])
            @hash_sudoku[key].delete(@sudoku_array[xx][yy])
            yy += 1
          else 
            yy+=1
          end
        end
        yy = y 
        xx += 1
      end
    @hash_sudoku[key]
  end

  def coordenadas(key)
    coord = @hash_posiciones[key]
    posicion_x = coord[0]
    posicion_y = coord[1]
    box = 1 if (0..2).include?(posicion_x) && (0..2).include?(posicion_y)
    box = 2 if (0..2).include?(posicion_x) && (3..5).include?(posicion_y)
    box = 3 if (0..2).include?(posicion_x) && (6..8).include?(posicion_y)

    box = 4 if (3..5).include?(posicion_x) && (0..2).include?(posicion_y)
    box = 5 if (3..5).include?(posicion_x) && (3..5).include?(posicion_y)
    box = 6 if (3..5).include?(posicion_x) && (6..8).include?(posicion_y)

    box = 7 if (6..8).include?(posicion_x) && (0..2).include?(posicion_y)
    box = 8 if (6..8).include?(posicion_x) && (3..5).include?(posicion_y)
    box = 9 if (6..8).include?(posicion_x) && (6..8).include?(posicion_y)

    box
  end

  def resolver
    reten = 81
    #loop do
      @hash_sudoku.keys.each do |key|
        coord = @hash_posiciones[key]
        posicion_x = coord[0]
        posicion_y = coord[1]
        posibilidades_columna(key)
        posibilidades_fila(key)
        posibilidades_cuadrante(key)
        p @sudoku_array
        if @hash_sudoku[key].length == 1
          p "YEEES #{key}"
          p @hash_sudoku[key].length
          if @sudoku_array[posicion_x][posicion_y] == "0"
              @sudoku_array[posicion_x][posicion_y] = @hash_sudoku[key[0]]
          end
        end
      end
      p @sudoku_array
      
      #  @sudoku_array.each do |x|
      #   x.map do |a|
      #     if a != "0"
      #       reten -= 1
      #     end
      #   end
      # end

      # if reten == 0
      #   break
      # end

    #end
    p @sudoku_array
  end


#fin de clase  
end


game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')


p game.resolver# p game.posibilidades_fila(1)
# p game.posibilidades_columna(2)



# puts game.board
# p make_sudoku_hash('702806519100740230005001070008000002610204053200000100070400800064078005821503907')