def mode(array)
  frecuencie = Hash.new(0)
  array.each do |numero| 
    frecuencie[numero] += 1 
  end
  max_quantity = frecuencie.values.max
  max_number = frecuencie.select { |key, value| value == max_quantity}.keys
end




# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]