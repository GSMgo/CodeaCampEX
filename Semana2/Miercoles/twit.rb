require 'Nokogiri'

class TwitterScrapper
  def initialize
    @doc = Nokogiri::HTML(File.open('twitter_ch.html'))
    @profile_name = extract_username
    @arr_tweets = []
    @fechas2 = []
    #arreglo con los estas en el sig. orden: Tweets: Siguiendo: Seguidores: Me gusta:
    @arr_stats_header = []
    @date_tweets = [] 
  end

  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    puts "Username: #{profile_name.first.inner_text}"
  end

  def extract_tweets
    contador = 0
    #stratct date of the tweet
    date = @doc.search(".time > a")
    date.each do |x|
      @date_tweets << x.inner_text
    end


    tweet = @doc.search(".js-tweet-text-container > p") 
    tweet.each do |x|
     @arr_tweets << x.inner_text
    end
    @arr_tweets.each do |x|
      puts "#{@date_tweets[contador]}:  #{x.delete("\n")} \n\n"
      contador += 1
    end

  end

  def extract_stats
    stats_header = @doc.search('.ProfileNav-value')
    contador = 0
    stats_header.each do |x|
      @arr_stats_header << stats_header[contador].inner_text
      contador += 1
    end
     puts "STATS: Tweets: #{@arr_stats_header[0]} Siguiendo: #{@arr_stats_header[1]} Seguidores: #{@arr_stats_header[2]} Me gusta: #{@arr_stats_header[3]}"
  end


  def to_s
    extract_username
    puts "*"*100
    extract_stats
    puts "*"*100
    puts "Tweets:"
    puts ""
    extract_tweets
  end

end

a = TwitterScrapper.new()
puts a

