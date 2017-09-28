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

  def tweet(tweet_text)
    @client.update(tweet_text)

  end

  def search_tweets()


  end

  def tweet_later(text)
    # tweet = # Crea un tweet relacionado con este usuario en la tabla de tweets
    # Este es un método de Sidekiq con el cual se agrega a la cola una tarea para ser
    # 
    TweetWorker.perform_async(tweet.id)
    #La última linea debe de regresar un sidekiq job id
  end



end
