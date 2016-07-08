def max(array)
  maximo = array[0]
  array.each do |num| 
    if num > maximo
      maximo = num
    end
  end
maximo
end


# Pruebas
p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5 