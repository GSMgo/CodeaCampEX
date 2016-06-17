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

get '/profile/:id' do
  @user = User.find(params[:id])
  erb :welcome
end


