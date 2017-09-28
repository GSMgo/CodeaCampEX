get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  p @url = Url.new
  erb :index
end

post '/urls' do
  # crea una nueva Url
  input = params[:user_url]
  @url = Url.new(long_url: input)
  if @url.save
    erb :url_display
  else
    erb :index
  end
  # if Url.create(:long_url => url, :click_count => 0).valid? 
  #   @url = Url.create(:long_url => url, :click_count => 0)
  #   erb :url_display
  # else
  #   # @url.errors.full_message(:long_url, "should start with www.")
  #   erb :index
  # end

end

get '/list_display' do
  #redirige al archivo con toda las listas
  erb :list_display
end

# e.g., /q6bda
get '/:short_url' do
  @short_url = params[:short_url]
  @urls = Url.get_urls
  if @urls.has_value?(@short_url)
    obj = Url.where(short_url: @short_url).first
    obj.click_count += 1
    obj.save
    redirect to ("http://#{@urls.key(@short_url)}")
  else
    redirect to ("/")
  end

end
# 