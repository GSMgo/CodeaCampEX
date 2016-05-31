def factorial(numero)
   var = 1
   sum_total = (1..numero)
   sum_total.each do |num| 
   var *= num  
  end 
  var
end 

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720

def factorial_recursive(n)
    if n == 0
        1
    else
        n * factorial(n-1)
    end
end

p factorial_recursive(5) == 120
p factorial_recursive(4) == 24
p factorial_recursive(0) == 1
p factorial_recursive(1) == 1
p factorial_recursive(6) == 720