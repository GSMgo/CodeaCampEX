# This class is for to create object-Person.
class PERSON
    # Difining hash with constant, life stage values and a intiger constant for a legal age.
    LIFE_STAGE = {childhood:12, teenager:19, adult:50}
    LEGAL_AGE = 18
    # Describing acessors for the symbol name.
    attr_reader :name
    attr_writer :name

    # The initialize method is defined with two parameters name and age.
    def initialize(name, age) 
        # The arguments are saved as instance variables.
        @name = name
        @age = age
    end
    
    # Difining a method to get the age of the person.
    def age
        @age
    end

    # Difining a method to know the life stage of the person.
    def life_stage
        # Comparing the age with the constant of life stages. 
        if @age < LIFE_STAGE[:childhood]
            return :childhood
        elsif @age < LIFE_STAGE[:teenager]
            return :teenager
        elsif @age < LIFE_STAGE[:adult]
            return :adult
        else
            :elder
        end
    end

    # Method to know if the person has a legal age.
    def legal?
        # Comparing the age of the person with the legal age.
        @age >= LEGAL_AGE
    end
end


# This part of the code is just a proof. 
# All the proofs need to be "true"

fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)

# The proofs are to know if the person-objects have legal age.
puts fernando.legal? == false
puts juan.legal? == true
puts laura.legal? == true
puts andrea.legal? == false

# The proofs below are to know the life life stage of the person-object.
puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

# Changing the information of the person. 
puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"
