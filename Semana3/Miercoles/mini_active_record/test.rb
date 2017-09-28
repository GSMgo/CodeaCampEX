require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

p chef = Chef.find(1)
assert chef
assert meal = Meal.find(1)

assert Chef.all
assert Meal.all

assert Chef.create(first_name: 'Gerardo', last_name: 'Sandoval', email: 'gerardo_90@hmtl.com', phone: '2224466587', birthday: '25-08-2015')
assert Meal.create(name: 'Pasta123', chef_id: '1')

p Chef.where("first_name", 'Gerardo')
assert Meal.where(name = 'Pasta123')

# sera false ya que no existen
# assert chef.new_record?
# assert meal.new_record?

assert chef.save
assert meal.save

assert chef[:first_name]
assert meal[:name]

assert chef[:first_name]= "Primerochef"
assert meal[:name]= "Primeromeal" 

# assert chef.insert!
# assert meal.insert!

# assert chef update!
# assert meal update!

puts "finished"
