  # def join_arrays(arreglo_1, arreglo_2)
  #   arreglo_2.each do |a1|
  #     arreglo_1 += [a1]
  #   end 
  #    arreglo_1 
  # end


def join_arrays(arr1,arr2)
  arr1.concat(arr2)
end
p join_arrays
  p join_arrays([1, 2, 3], [4, 5, 6])  == [1, 2, 3, 4, 5, 6]
  p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']



# def join_arrays(arreglo_1, arreglo_2)
#   arreglo_final = []
#   arreglo_1.each do |a1|
#     arreglo_final += [a1]
#   end 
#   arreglo_2.each do |a2|
#     arreglo_final += [a2]
#   end
#    arreglo_final 
# end

# p join_arrays([1, 2, 3], [4, 5, 6])  == [1, 2, 3, 4, 5, 6]
# p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']