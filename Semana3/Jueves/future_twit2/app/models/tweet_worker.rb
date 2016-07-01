class TweetWorker < ActiveRecord::Base

  include Sidekiq::Worker

  def perform(tweet_id)
    # tweet = # Encuentra el tweet basado en el 'tweet_id' pasado como argumento
    tweet = Tweets.find(tweet_id)
    # user  = # Utilizando relaciones deberás encontrar al usuario relacionado con dicho tweet
    user_id = tweet.twitter_user_id
    @user = User.find(user_id)
    # Manda a llamar el método del usuario que crea un tweet (user.tweet)
    p "USERUSERUSERUSER"
    p @user
    @user.tweet(@user.oauth_token, @user.oauth_token_secret, tweet.text, user_id)
  end

end
