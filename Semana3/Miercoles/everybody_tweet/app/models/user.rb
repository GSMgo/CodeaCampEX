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
end
