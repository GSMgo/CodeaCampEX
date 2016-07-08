def fibonacci(n)
  arr2 = [1,1]
  (2..n).each do |x|
    arr2.push((arr2[x-2] + arr2[x-1]))
  end
arr2[n-1]
end

# Pruebas

p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55