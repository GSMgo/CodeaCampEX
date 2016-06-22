class User < ActiveRecord::Base
  include BCrypt
  # Remember to create a migration!
  def self.check_email(em)
    user = User.find_by(email: em)
    if user 
      return user
    else
      nil
    end
  end

  def self.create_user(usrname, name, email, pass)
    User.create(username: usrname, name: name, email: email, password: pass)
  end

  def self.update_user(user, usrname, name, email, pass)
    if usrname != nil
      user.username = usrname
    end
    if name != nil
      user.name = name
    end
    if email != nil
      user.email = email
    end
    if pass != nil
      user.password = pass
    end
    user.save 
  end

  def delete_user 
    self.destroy
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end

  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end
#fin de clase  
end
