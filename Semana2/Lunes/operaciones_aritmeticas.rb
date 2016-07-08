def add(num1,num2)
  num1 + num2
end

def substract(num1,num2)
  num1-num2
end

def multiply(num1,num2)
  num1*num2
end

def divide(num1,num2)
  num1/num2.to_f
end




p add(10, 2) == 12
p substract(10, 2) == 8
p multiply(10, 2) == 20
p divide(10, 4) == 2.5