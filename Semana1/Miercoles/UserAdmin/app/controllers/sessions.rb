post '/login' do
  #crear sesion
  @email = params[:email]
  @password = params[:password]
  @user = User.authenticate(@email, @password)
  if @user != nil
    session[:id] = @user.id
    redirect to ("/profile/#{@user.id}")
  else  
    erb :index
  end
end

post '/register' do
  @nombre = params[:name]
  @email = params[:email]
  @password = params[:password]
  User.create(nombre: @nombre, email: @email, password: @password)
  @user = User.authenticate(@email, @password)
  redirect to ("/profile/#{@user.id}")
end

post '/logout' do
  session.clear
  #eliminar sesion

  redirect to ('/')
end