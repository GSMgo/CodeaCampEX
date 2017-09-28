# Removiendo vocales
def vowels(arr)
  arr1 = []
  arr.each do |x|
    arr1.push(x.gsub(/[aeiou]/,''))
  end
arr1
end

# Suma de números
def get_sum(num1,num2)
  resultado = 0
  if num1 > num2
    (num2..num1).each do |x|
      resultado += x
    end
  elsif num1 < num2 
    (num1..num2).each do |x|
      resultado += x
    end
  else
    resultado = num1
  end
resultado
end

# Palabras y caracteres
def char_word_counter(str)
  palabras = str.split().count
  car = str.delete(' ').chars.count
  "This sentence has #{palabras} words & #{car} characters"
end


# Buscando en hashes
def food_group(str)
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
    }
    valores = food_groups.values
    key = ""
    valores.each do |arreglo|
      if arreglo.include? str
         key = food_groups.key(arreglo)
         break
      else
        key = "comida no encontrada"
      end
    end
  key
end

#CLASS DIE
class Die

  def initialize(lados)
    @lados = lados
  end

  def roll
    rolled = Random.new
    "Se obtuvo #{rolled.rand(1..@lados)}"
  end

  def getlados
    @lados
    "El dado tiene #{@lados} lados"
  end

  def setLados(lados)
    @lados = lados
    "El dado tiene ahora #{@lados} lados"
  end

end

#CLASS MYCAR
class MyCar

  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(speed)
    @speed += speed
    "You push the gas and accelerate #{speed} kph."
  end

  def brake(speed)
    @speed -= speed
    "You push the brake and decelerate #{speed} kph."
  end

  def shut_down
    @speed = 0
    "Let's shut down to 0!"
  end

  def current_speed
    "You are now going #{@speed} kph."
  end
end

##  PRUEBAS

# REMOVIENDO VOCALES
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

# SUMA DE NUMEROS
p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

#PALABRAS Y CARACTERES
p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

# BUSCANDO EN HASHES
p food_group('Crema') == "lacteo" # en el hash "lacteo" esta sin tilde y en las pruebas esta con tilde"
p food_group('Res') == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"


# DADO
dado = Die.new(10)
p dado.roll
p dado.getlados
p dado.setLados(50)
p dado.roll
p dado.getlados
p dado.setLados(100)
p dado.getlados
p dado.roll


# DRIVING
carro_prueba = MyCar.new(2010,"red","chevy") 
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."

