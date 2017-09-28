def fizzbuzz(min, max)
  arreglo = []
  for i in min..max
    if i % 3 == 0 && i % 5 == 0
      arreglo.push("FizzBuzz")
    elsif i % 3 == 0 && i % 5 != 0
      arreglo.push("Fizz")
    elsif i % 3 != 0 && i % 5 == 0
      arreglo.push("Buzz")
    else 
      arreglo.push(i)
    end 
  end
  arreglo
end


p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]