get '/' do	
	@abuelita = params[:abuelita]
	erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  @user_input = params[:user_input]
	if @user_input == "bye"
		@abuelita = "Adios mijo"
		erb :index
	else
		@abuelita = "QUE QUEEEEE"
	end
end

