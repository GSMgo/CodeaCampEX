class Tienda

  def initialize(args)
    @view = View.new
    @view.start
    start
  end

  def start
    @view.options_start
    ans = @view.input
    options_start(ans)
  end

  def options_start(opt)
    case opt.to_i
    when 1
      login
    when 2
      register
    when 3
      exit
    else 
      p "INPUT ERROR"
      start
    end
  end

  def options
    @view.options('normal')
    ans = @view.input

  end

  def options_admin
    @view.options('admin')
    ans = @view.input


  end

  def login
    @view.email
    email = @view.input
    @view.password
    pass = @view.input
    if user_exists(email,pass)
      p user = get_user(email,pass)
      if user.user_type == 'admin'
        options_admin
      else
        options
      end
    else
      @view.unexistent_user
    end

  end

  def user_exists(email,pass)
    User.exists?(email: email, password: pass)
  end

  def get_id(email, pass)
    a = User.where(email: email, password: pass)
    a.id
  end

  def user_type(id)
    ans = User.where(email: email, password: pass)
    ans.type
  end

  def get_user(email,pass)
    User.where(email: email, password: pass).first
  end

  def register
    @view.username
    username = @view.input
    @view.email
    email = @view.input
    @view.password
    pass = @view.input
    User.create(user_type: 'normal', username: username, email: email, password: pass)
    @view.user_created
    @view.options('normal')
  end

  def exit
    @view.exit
  end


end
