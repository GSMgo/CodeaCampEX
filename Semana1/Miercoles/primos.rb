# def primos(number)
#   contador = 0
#   empty_array = []
#   primo = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
#     until number == 1
#       empty_array << primo[contador]
#       number = number/primo[contador]
#       contador += 1
#       p number
#     end

# empty_array


#    #  loop do 
#    #    if number % primo[contador] == 0
#    #      p "SI"
#    #      empty_array << primo[contador]
#    #      number = number/primo[contador] 
#    #    end
#    #    break if number == 1
#    #    contador += 1
#    # end  
#    # empty_array
# end 


def primos(number)
  contador = 0
  empty_array = []
  primo = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
  loop do
    if number % primo[contador] == 0
      number = number / primo[contador]
      empty_array << primo[contador]
      contador = 0 
    else 
      contador += 1
    end
    break if number == 1
  end
empty_array
end

p primos(4) == [2, 2]
p primos(9) == [3, 3]
p primos(12) == [2, 2, 3]
p primos(34) == [2, 17]