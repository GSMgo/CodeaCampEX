class User < ActiveRecord::Base
  # Remember to create a migration!
  def self.get_user(username)
     user = User.find_by(username: username)
     if user
      return user
    else
      return nil
    end
  end

  def self.get_user_byid(id)
     user = User.find(id)
     if user
      return user
    else
      return nil
    end
  end


end
