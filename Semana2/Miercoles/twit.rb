require 'Nokogiri'

class TwitterScrapper
  def initialize
    @doc = Nokogiri::HTML(File.open('twitter_account.html'))
    @profile_name = extract_username
    @arr_tweets = []
    @fechas2 = []
  end

  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    profile_name.first.inner_text
  end

  def extract_tweets
    tweet = @doc.search(".js-tweet-text-container > p")
     @fechas = @doc.search(".time > a")
    contador = 0
    contador2 = 0
    tweet.each do |x|
      @arr_tweets << tweet[contador]
      contador += 1
    end
    @fechas.each do |z|
     @fechas2 << @fechas[contador2].("data-original-title").text()
     contador2 += 1  
   end
   p @fechas2
    @arr_tweets
  end

  def extract_stats
  end

  def to_s


    @arr_tweets2 = extract_tweets
    @arr_tweets2.each do |x|
      print "#{x} \n \n"
    end

  end

end

a = TwitterScrapper.new()
a.extract_tweets