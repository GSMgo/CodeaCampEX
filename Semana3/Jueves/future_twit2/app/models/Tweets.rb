class Tweets < ActiveRecord::Base
  # Remember to create a migration! 

  def self.check_tweets(handle, username)
    same = false
    user = User.find_by(username: username)
    twitter_user = TwitterUser.find_by(handle: handle)
    $client = User.authenticate(user.oauth_token, user.oauth_token_secret)
    @tweet = $client.user_timeline(handle, {count: 1})
    @tweet_bd = Tweets.find_by(twitter_user_id: twitter_user.id)
    # @tweets_bd = Tweets.all.select{ |t|
    #   t.twitter_user_id == user.id
    # }
    @tweet[0].created_at == @tweet_bd.twitter_created_date ? same = true : same = false
    @tweet[0].created_at
    @tweet_bd.twitter_created_date
    same
  end

  
end
