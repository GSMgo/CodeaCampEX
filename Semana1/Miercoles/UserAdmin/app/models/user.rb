class User < ActiveRecord::Base
  # Remember to create a migration!
  
   # ej. User.authenticate('fernando@codea.mx', 'qwerty')

  def self.authenticate(email, password)

    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
  end

end
