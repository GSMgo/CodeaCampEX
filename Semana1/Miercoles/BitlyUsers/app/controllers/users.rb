before '/profile/' do
  if session[:id] == nil 
    @error = "Necesitas estar loggeado para acceder a la pagina"
    redirect to ('/')
  end
end

post '/logregister' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :login
end

get '/profile/:id' do
  @user = User.find(params[:id])
  erb :welcome
end


