# recursivo 
require 'benchmark'

def fibonacci_recursive(n)
  return n if (0..1).include? n
  (fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))
end 


# iterativo

def fibonacci_iterative(n)
  if n != 0
    arr2 = [1,1]
    (2..n).each do |x|
      arr2.push((arr2[x-2] + arr2[x-1]))
    end
  else 
    return 0
  end
  arr2[n-1]
end

n = 1_000_000
puts Benchmark.bm { |x| 
  x.report { n.times do ; fibonacci_iterative(9) ; end }
}
n = 1_000_000
puts Benchmark.bm { |x| 
  x.report { n.times do ; fibonacci_recursive(9) ; end }
}

# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5
