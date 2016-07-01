get '/' do
  if user_id = session[:user_id]
    @user = User.find(user_id) 
    @user_id = @user.id
  end
  erb :index
end

post '/profile' do
  username = params[:username]
  if User.find_by(username: username) 
    user = User.find_by(username: username) 
    session[:user_id] = user.id
    user_id = user.id
    redirect to ("/#{user_id}")
  else 
    session.clear
    p session
    redirect to ('/sign_in')
  end
end

get '/sign_in' do
  # El método `request_token` es uno de los helpers
  # Esto lleva al usuario a una página de twitter donde sera atentificado con sus credenciales
  redirect request_token.authorize_url(:oauth_callback => "http://#{host_and_port}/auth")
  # Cuando el usuario otorga sus credenciales es redirigido a la callback_url 
  # Dentro de params twitter regresa un 'request_token' llamado 'oauth_verifier'
end

get '/auth' do
  # Volvemos a mandar a twitter el 'request_token' a cambio de un 'acces_token' 
  # Este 'acces_token' lo utilizaremos para futuras comunicaciones.   
  @access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
  # Despues de utilizar el 'request token' ya podemos borrarlo, porque no vuelve a servir. 
  session.delete(:request_token)
  # Aquí es donde deberás crear la cuenta del usuario y guardar usando el 'acces_token' lo siguiente:
  # nombre, oauth_token y oauth_token_secret
  # No olvides crear su sesión 
  user = User.create(username: @access_token.params[:screen_name].downcase, screen_name: @access_token.params[:screen_name], oauth_token: @access_token.params[:oauth_token] , oauth_token_secret: @access_token.params[:oauth_token_secret])
  session[:user_id] = user.id
  user_id = user.id
  redirect to ("/#{user_id}")
end

  # Para el signout no olvides borrar el hash de session

get '/:user_id' do
  user_id = params[:user_id]
  user = User.find(user_id)
  @username = user.username
  erb :profile
end

post '/fetch' do
   if params[:twitter_handle]
    #se hizo un busqueda
    handle = params[:twitter_handle]
    user_id = session[:user_id]
    user = User.find(user_id)
  elsif params[:tweet_text]
    #se actualizan los twits del usuario despues de postear
    user_id = session[:user_id]
    user = User.find(user_id)
    handle = user.username
  end
  #Si el usuario ya se habia buscado antes
  if twitter_user = TwitterUser.find_by(handle: handle)
    #Si los tweets estan actualizados
    if Tweets.check_tweets(handle, user.username)
      @tweets = Tweets.all.select{ |t|
        t.twitter_user_id == twitter_user.id
      }
    else
      #Los tweets no estan actualizados / actualizar y guardar
      @client = User.authenticate(user.oauth_token, user.oauth_token_secret)
      @tweets = @client.user_timeline(handle, {count: 10})
      Tweets.destroy_all(twitter_user_id: twitter_user.id)
      @tweets.each do |t|
        Tweets.create(text: t.text, twitter_user_id: twitter_user.id, twitter_created_date: t.created_at)
      end
    end
  else #no se ha buscado el usuario antes / piden y guardan tweets
    twitter_user = TwitterUser.create(handle: handle)
    client = User.authenticate(user.oauth_token, user.oauth_token_secret)
    @tweets = client.user_timeline(handle, {count: 10})  
    @tweets.each do |t|
      Tweets.create(text: t.text, twitter_user_id: twitter_user.id, twitter_created_date: t.created_at)
    end
  end
  # p @tweets = client.search(handle,:result_type => "recent").take(10)
  erb :tweets, layout: false
end

post '/logout' do 
  session.clear
  redirect to ('/')
end

post '/post_tweet' do
    user_id = session[:user_id]
    @user = User.find(user_id)
    # Recibe el input del usuario
    tweet_text = params[:tweet_text]
    # Crea el tweet utilizando la API de Twitter
    @client = User.authenticate(@user.oauth_token, @user.oauth_token_secret)
    @client.update(tweet_text)
    # Regresa al usuario el tweet o un mensaje de EXITO o ERROR
  erb :tweets, layout: false

end



