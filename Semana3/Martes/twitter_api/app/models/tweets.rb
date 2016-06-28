class Tweets < ActiveRecord::Base
  # Remember to create a migration! 

  def self.check_tweets(user)
    same = false
    count = 0
    @tweets = $client.user_timeline(user, {count: 10})
    @tweets_bd = Tweets.all.select{ |t|
      t.twitter_user_id == user.id
    }
    @tweets.each do |x|
      x.text == @tweets_bd[count].text ? same = true : same = false
      count += 1
    end
    p "SAME"
    p same
  end
  
end
