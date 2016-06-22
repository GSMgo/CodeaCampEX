get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/profile' do
  

  erb :profile
end

post '/profile' do
  email = params[:email]
  password_digest = params[:password]
  user = User.authenticate(email,password_digest)
  if user 
    session[:user_id] = user.id
    redirect to ('/profile')
  else
    #show the error
    redirect to ('/')
  end

end

post '/create_user' do
  username = params[:username]
  name = params[:name]
  email = params[:email]
  password_digest = params[:password]
  if User.check_email(email)
    #ya existe el email
    #show the error
    redirect to ('/')
  else
    User.create_user(username,name,email,password_digest)
    user = User.authenticate(email,password_digest)
    session[:user_id] = user.id
    redirect to ('/profile')
  end


end