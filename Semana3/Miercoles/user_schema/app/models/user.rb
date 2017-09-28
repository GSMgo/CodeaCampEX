class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :message => "Enter a valid Email address!"},
                    :uniqueness => {:case_sensitive => false, :message => "Email already exists!"}
  validates :age, :numericality => { :greater_than => 18}
  validates :phone, :length => {:minimum => 10}


  def name
    "#{first_name} #{last_name}"
  end

  def age
    age = Date.today.year - birthday.year
    age -= 1 if Date.today < birthday + age.years #for days before birthday
    age
  end

end
