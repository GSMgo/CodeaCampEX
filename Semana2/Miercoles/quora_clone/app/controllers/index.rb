get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/feed' do
  username = params[:username]
  @user = User.get_user(username)
  if @user
    "ENTRA AQUI"
    redirect to ("/feed/#{@user.id}")
  else 
    erb :feed
  end
end

get '/feed/:id' do
  user_id = params[:id]
  p "user_id en el get"
  p user_id
  @user = User.get_user_byid(user_id)
  erb :feed
end

post '/create_user' do
  username = params[:username]
  User.create(username: username)
  @user = User.get_user(username)
  redirect to ('/feed/#{@user.id}')
end



