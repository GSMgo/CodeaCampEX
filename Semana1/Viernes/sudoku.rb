
  # def initialize(sudoku_string)
  #   @sudoku_string = sudoku_string
  #   @sudoku_array = make_sudoku_array(@sudoku_string)

  # end

  # def make_sudoku_array
  #   @sudoku_string.scan(/(.)(.)(.)(.)(.)(.)(.)(.)(.)(.)/)
  # end


  def forced_entry(sudoku_array)


    #checar en el mismo cuadro por no posibilidades 
    sudoku_array.each do |cada_cuadro|
      no_posibilidades = []

      cada_cuadro.each do |numero|
        if no_posibilidades.include? numero
          next
        else
          if numero != "0"
          no_posibilidades << numero
          end
        end
      
      def buscar_columna(indice_1, indice_2)
        3.times do
          3.times do
            if sudoku_array[contador1][contador2] != 0
              contador2 += 3
            else
              if no_posibilidades.include?(sudoku_array[contador1][contador2])
                no_posibilidades << sudoku_array[contador1][contador2]
                contador2 += 3
              else
                contador2 += 3
              end
            end
          end
          contador2 = 0
          contador1 += 3
        end

      end
        #Buscar por cada columna

        contador1 = 0
        contador2 = 0
        3.times do
          3.times do
            if sudoku_array[contador1][contador2] != 0
              contador2 += 3
            else
              if no_posibilidades.include?(sudoku_array[contador1][contador2])
                no_posibilidades << sudoku_array[contador1][contador2]
                contador2 += 3
              else
                contador2 += 3
              end
            end
          end
          contador2 = 0
          contador1 += 3
        end

        #Buscar por cada fila

        contador1 = 0
        contador2 = 0
        3.times do
          3.times do
            if sudoku_array[contador1][contador2] != 0
              contador2 += 1
            else
              if no_posibilidades.include?(sudoku_array[contador1][contador2])
                no_posibilidades << sudoku_array[contador1][contador2]
                contador2 += 1
              else
                contador2 += 1
              end
            end
          end
          contador2 = 0
          contador1 += 1
        end

      end

      
    end
    
    
  end

 forced_entry([["7", "0", "2", "8", "0", "6", "5", "1", "9"], ["1", "0", "0", "7", "4", "0", "2", "3", "0"], ["0", "0", "5", "0", "0", "1", "0", "7", "0"], ["0", "0", "8", "0", "0", "0", "0", "0", "2"], ["6", "1", "0", "2", "0", "4", "0", "5", "3"], ["2", "0", "0", "0", "0", "0", "1", "0", "0"], ["0", "7", "0", "4", "0", "0", "8", "0", "0"], ["0", "6", "4", "0", "7", "8", "0", "0", "5"], ["8", "2", "1", "5", "0", "3", "9", "0", "7"]])

# m = ('702806519100740230005001070008000002610204053200000100070400800064078005821503907')
# .scan(/(.)(.)(.)(.)(.)(.)(.)(.)(.)/)
# p m


# game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

# game.forced_entry

# puts game.board
