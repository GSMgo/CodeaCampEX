def shuffle(array)
  arr = []
  contador = 0
    loop do
      random = array.sample
      if arr.include? random
        next
      else
        arr << random
        contador += 1
        if contador == array.length
          break
        end
      end
    end
  arr
end

p shuffle([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
p shuffle([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])

# Driver code:
array = (1..15).to_a  

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true