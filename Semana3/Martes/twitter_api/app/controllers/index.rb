get '/' do
  @username = session[:username]
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/' do
  @username = params[:username]
  p @username
  session[:username]= @username
  redirect to ('/')
end

post '/fetch' do 
  username = params[:twitter_handle]
  redirect to ("/#{username}")
end

get '/:username' do
  username = params[:username]
  if user = TwitterUser.find_by(handle: username)
    if Tweets.check_tweets(user)
      @tweets = Tweets.all.select{ |t|
        t.twitter_user_id == user.id
      }
    else
      @tweets = $client.user_timeline(username, {count: 10})
      Tweets.destroy_all(twitter_user_id: user.id)
      @tweets.each do |t|
        Tweets.create(text: t.text, twitter_user_id: user.id)
      end
    end
  else
    user = TwitterUser.create(handle: username)
    @tweets = $client.user_timeline(username, {count: 10})  
    @tweets.each do |t|
      Tweets.create(text: t.text, twitter_user_id: user.id)
    end
  end
  # p @tweets = $client.search(handle,:result_type => "recent").take(10)
  erb :tweets
end

get '/:username' do
  # Se crea un TwitterUser si no existe en la base de datos de lo contrario trae de la base al usuario. 

  # if # La base de datos no tiene tweets?  
  #   # Pide a Twitter los últimos tweets del usuario y los guarda en la base de datos
  # end

  # Se hace una petición por los ultimos 10 tweets a la base de datos. 

end