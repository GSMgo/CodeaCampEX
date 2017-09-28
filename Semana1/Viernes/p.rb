def average(arreglo)
  suma = 0
  arreglo.each do |n| 
    suma += n
  end
 suma / arreglo.size.to_f
 end

p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875