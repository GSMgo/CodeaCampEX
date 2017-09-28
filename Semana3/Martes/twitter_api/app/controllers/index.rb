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
  #Si el usuario ya se habia buscado antes
  if user = TwitterUser.find_by(handle: username)
    #Si los tweets estan actualizados
    if Tweets.check_tweets(username)
      @tweets = Tweets.all.select{ |t|
        t.twitter_user_id == user.id
      }
    else
      #Los tweets no estan actualizados / actualizar y guardar
      @tweets = $client.user_timeline(username, {count: 10})
      Tweets.destroy_all(twitter_user_id: user.id)
      @tweets.each do |t|
        Tweets.create(text: t.text, twitter_user_id: user.id, twitter_created_date: t.created_at)
      end
    end
  else #no se ha buscado el usuario antes / piden y guardan tweets
    user = TwitterUser.create(handle: username)
    @tweets = $client.user_timeline(username, {count: 10})  
    @tweets.each do |t|
      Tweets.create(text: t.text, twitter_user_id: user.id, twitter_created_date: t.created_at)
    end
  end
  # p @tweets = $client.search(handle,:result_type => "recent").take(10)
  erb :tweets
end

