before '/profile/' do
  if session[:id] == nil 
    @error = "Necesitas estar loggeado para acceder a la pagina"
    redirect to ('/')
  end

end

get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/login' do
  #crear sesion
  @user = User.authenticate(@email, @password)
  if @user != nil
    p session[:id] = @user.id
    redirect to ("/profile/#{@user.id}")
  else  
    erb :index
  end
end

get '/profile/:id' do
  @user = User.find(params[:id])
  erb :welcome
end

post '/logout' do
  session.clear
  #eliminar sesion

  redirect to ('/')
end

post '/register' do
  @nombre = params[:name]
  @email = params[:email]
  @password = params[:password]
  User.create(nombre: @nombre, email: @email, password: @password)
  @user = User.authenticate(@email, @password)
  redirect to ("/profile/#{@user.id}")
end
