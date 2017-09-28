get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/login' do
	username = params[:username]
	user = User.find_by(username: username)
	if user 
		redirect to ("/profile/#{username}")
	else
		erb :index
	end 
end


get '/profile/:username' do
	p @username = params[:username]
	erb :profile
end

post '/upload' do
	p params[:photo]
  @photo = Photo.new(params[:photo])
  @photo.save!
  redirect '/'
end