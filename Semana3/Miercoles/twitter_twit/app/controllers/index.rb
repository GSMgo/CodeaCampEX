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
  else 
    user = User.create(username: username)
  end
  session[:user_id] = user.id
  user_id = user.id
  redirect to ("/#{user_id}")
end

get '/:user_id' do
  user_id = params[:user_id]
  user = User.find(user_id)
  @username = user.username
  erb :profile
end

post '/fetch' do
   if params[:twitter_handle]
    handle = params[:twitter_handle]
  elsif params[:tweet_text]
    user_id = session[:user_id]
    user = User.find(user_id)
    handle = user.username
  end
  #Si el usuario ya se habia buscado antes
  if user = TwitterUser.find_by(handle: handle)
    #Si los tweets estan actualizados
    if Tweets.check_tweets(handle)
      @tweets = Tweets.all.select{ |t|
        t.twitter_user_id == user.id
      }
    else
      #Los tweets no estan actualizados / actualizar y guardar
      @tweets = $client.user_timeline(handle, {count: 10})
      Tweets.destroy_all(twitter_user_id: user.id)
      @tweets.each do |t|
        Tweets.create(text: t.text, twitter_user_id: user.id, twitter_created_date: t.created_at)
      end
    end
  else #no se ha buscado el usuario antes / piden y guardan tweets
    user = TwitterUser.create(handle: handle)
    @tweets = $client.user_timeline(handle, {count: 10})  
    @tweets.each do |t|
      Tweets.create(text: t.text, twitter_user_id: user.id, twitter_created_date: t.created_at)
    end
  end
  # p @tweets = $client.search(handle,:result_type => "recent").take(10)
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
    $client.update(tweet_text)
    # Regresa al usuario el tweet o un mensaje de EXITO o ERROR
  erb :tweets, layout: false

end