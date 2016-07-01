class User < ActiveRecord::Base
  # Remember to create a migration!
  def self.authenticate(at,ats)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = at
      config.access_token_secret = ats
    end
  client
  end

  def create_tweet(token, token_secret, tweet_text, user_id)
    user = User.find(user_id)
    @client = User.authenticate(user.oauth_token, user.oauth_token_secret)
    @client.update(tweet_text)
  end

  def tweet_later(text)
    # tweet = # Crea un tweet relacionado con este usuario en la tabla de tweets
    p tweet = Tweets.create(text: text, twitter_user_id: self.id, twitter_created_date: DateTime.now)
    # Este es un método de Sidekiq con el cual se agrega a la cola una tarea para ser
    # 
    TweetWorker.perform_async(tweet.id) 
    #La última linea debe de regresar un sidekiq job id
  end



end
