require 'faker'
require 'csv'
#Creamos nuestro metodo, para crear nuestros objetos persons
def create_person(num_person)
  emp_arr = []
  num_person.times do 
    #Dentro de nuestro metodo, creamos un nuevo objeto persona y lo guardamos en un arreglo vacio.
    emp_arr << Person.new(Faker::Name.first_name,Faker::Name.last_name,Faker::Internet.email,Faker::PhoneNumber.phone_number,Time.now)
  end
  emp_arr
end

#La primera clase person, donde asignamos nuestros argumentos. 
class Person
  #se crean permiso de lectura para los atributos, para cada persona
  attr_reader :first_name, :last_name, :email, :phone, :created_at
  #Iniciamos nuestras variables de los argumentos
  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end
#clase para crear archivos "CSV" y guardar los objetos
class PersonWriter

  def initialize(nombre_archivo, array)
    @array = array
    @nombre_archivo = nombre_archivo
    
  end
  #Nuestro  metodo, abrira un archivo "CSV" y acomodaremos nuestro objeto
  def create_csv
      CSV.open(@nombre_archivo, "wb") do |csv|
        @array.each do |person|
            csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at]

            #p person.first_name
        end
      end
  end

  #end de clase PersonWriter
end
#Clase para leer lineas de un archivo "CSV" y guradarlos como objetos person
class PersonParser

  def initialize(nombre_archivo)
    @arr_read = []
    @nombre_archivo = nombre_archivo
  end
  #Metodo donde leemos cada linea de un archivo "CSV",  creamos un objeto person con lo leido, y lo guardamos en un arreglo
  def people
    CSV.foreach(@nombre_archivo) do |row|
      @arr_read << Person.new(row[0],row[1],row[2],row[3],row[4])
    end
    @arr_read
  end

end

p people = create_person(10)
person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

parser = PersonParser.new('people.csv')
p parser.people