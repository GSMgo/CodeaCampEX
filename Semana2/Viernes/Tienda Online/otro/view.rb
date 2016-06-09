class View

  def start
    puts "Welcome to the online store: SunCAPS, (www.csuncaps.com) "
    puts "_"*20
  end

  def options_start
      puts "Select option number:"
      puts "1. Login"
      puts "2. Register"
      puts "3. Exit"
  end

  def options(user)
    if user == "Admin"
      puts "Select option number:"
      puts "1. Logout"
      puts "2. Products Index"
      puts "3. Create Product"
      puts "4. Users Index"
    else
      puts "Select option number:"
      puts "1. Logout"
      puts "2. Products Index"
    end
  end

  def email
    print "Email: "
  end

  def password
    print "Password: "
  end

  def welcome(type)
    puts "Welcome #{type.capitalize}. Your type is #{type}"
    puts "_"*20
  end

  def input
    gets.chomp!
  end

end