def min(array)
  minimo = array[0]
  array.each do |num| 
    if num < minimo
      minimo = num
    end
  end
minimo
end


# Pruebas
p min([-20, -10, 0, 10, 20]) == -20
p min([1, 2, 3, 4, 5]) == 1
p min([5, 4, 3, 2, 1]) == 1