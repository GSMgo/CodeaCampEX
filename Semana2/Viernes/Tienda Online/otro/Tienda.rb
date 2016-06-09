class Tienda

  def initialize
    @view = View.new
    @products = [Product.new, Product.new, Product.new, Product.new, Product.new]
  end

  def start
    @view.start
    @view.options_start
    ans = @view.input
    case ans
      when 1
        login
      when 2

      when 3

    end
  end

  def login
    @view.email
    email = @view.input
    @view.password
    pass = @view.input
  end


    



end


