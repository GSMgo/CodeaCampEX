def median(array)
  array.sort!
  if array.size % 2 != 0
    median = array[array.size / 2]
  elsif array.size % 2 == 0
    median = (array[array.size/2] + array[array.size/2 -1 ]).to_f / 2
  end

median
end



# Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8