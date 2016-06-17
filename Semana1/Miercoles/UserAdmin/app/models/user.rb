class User < ActiveRecord::Base
  # Remember to create a migration!
  
   # ej. User.authenticate('fernando@codea.mx', 'qwerty')

  def self.authenticate(email, password)
    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    is_user = nil
    User.all.each do|x|
      if x.email == email && x.password == password
        return x
      end
    end
  end

end
