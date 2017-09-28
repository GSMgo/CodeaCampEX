class TweetWorker < ActiveRecord::Base

  include Sidekiq::Worker

  def perform(tweet_id)
  # tweet = # Encuentra el tweet basado en el 'tweet_id' pasado como argumento
  tweet = Tweets.find(tweet_id)
  # user  = # Utilizando relaciones deberás encontrar al usuario relacionado con dicho tweet
  user = tweet.twitter_user_id
  # Manda a llamar el método del usuario que crea un tweet (user.tweet)
  

  end

  def tweet_later(text)
    # tweet = # Crea un tweet relacionado con este usuario en la tabla de tweets
    # Este es un método de Sidekiq con el cual se agrega a la cola una tarea para ser
    # 
    TweetWorker.perform_async(tweet.id)
    #La última linea debe de regresar un sidekiq job id
  end


end
