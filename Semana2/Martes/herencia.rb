
class Motorized 

  def tank_size
  
  end

  def refuel
  
  end

  def number_of_gears
    
  end

end


class Vehicle < Motorized

  def age
    
  end
 
  def number_of_wheels
    
  end

  def color
    
  end

  def age! 
    
  end

  def has_motor
    
  end

  def what_am_i?
    return self
  end
end


class Motorbike < Vehicle
end


class Car < Vehicle
end


class Bicycle < Vehicle

  def initialize(num)
    
  end
end


class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end