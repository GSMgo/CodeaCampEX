get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/create_comment' do 
  p comment = params[:comment]
  p author = params[:author]

  return "Comment created"
end
