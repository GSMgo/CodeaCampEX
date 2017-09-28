def primisimo(number)
  contador = 0
  empty_array = []
  primos_1 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89 ,97]
    loop do 
      if number % primos_1[contador] == 0
        empty_array << primos_1[contador]
        number = number / primos_1[contador]
          contador = 0
        else 
          contador += 1 
      end  
     break if number == 1
end 
  empty_array
end 

p primisimo(1200)