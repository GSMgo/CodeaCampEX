#Buscar métodos
z = "Codeacamp"
puts z.upcase
puts z.downcase
puts z.length
puts z.start_with?("Co")
puts z.end_with?("Co")



# Métodos de String más usados

#[]
a = "Esto es un String"
puts a[11,6]
puts a

#[]=

a[10]=" gran " 
puts a  

#capitalize
puts a.capitalize

#chr
puts a.chr

#count / cuantas "n" hay en a
puts a.count "n"

#empty?
puts a.empty?

#sub /reemplaza la primera "n" por "m"
puts a.sub('n','m')

#gsub / reemplaza todas las "n" con "m"
puts a.gsub('n','m')

#include? / checas si incluye "string"
puts a.include? "String"

#index / Cual es la primera "m"
puts a.index('n')

#reverse
puts a.reverse

#split
p a.split(' ')

#strip
b = "    Esto es un gran STRING   \n\t "
puts b.strip

