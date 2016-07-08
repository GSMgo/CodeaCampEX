def prism_type(lado1,lado2,lado3)

  if lado1 == lado2 && lado1 == lado3
    "cubo"
  elsif  lado1 == lado2 || lado1 == lado3 ||lado2 == lado3
    "prisma rectangular"
  else
    "cuboide"
  end  
end

# Pruebas

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"