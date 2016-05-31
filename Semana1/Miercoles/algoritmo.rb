def linear_search(value, array)
  contador = 0
  loop do 
    if value == array[contador]
      #puts contador
      break 
    else 
      if contador == array.length-1
         return nil 
      end 
      contador +=1
    end 
  end 
      return contador
end 

random_numbers = [4, 3, 2, 20, 5, 64, 78, 11, 43]
p linear_search(20, random_numbers) == 3

p linear_search(29, random_numbers) == nil 

def global_linear_search(string, array)
  empty_array = []
  contador = 0
  loop do 
    if string == array[contador]
      empty_array << contador
      break if array.length-1 == contador
      contador += 1
    else 
      break if array.length-1 == contador
      contador += 1
    end 
  end 
  empty_array
end 

  arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]
