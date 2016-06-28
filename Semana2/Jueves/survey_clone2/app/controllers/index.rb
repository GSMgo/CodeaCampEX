get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/profile' do
  username = params[:username]
  @user = User.find_by(username: username)
  session[:user_id] = @user.id
  if @user
    redirect to ("/profile/#{@user.id}")
  else 
    erb :index
  end
end

get '/profile/:id' do
  user_id = params[:id]
  @user = User.find(user_id)
  erb :profile
end

post '/create_user' do
  username = params[:username]
  User.create(username: username)
  @user = User.find_by(username: username)
  session[:user_id] = @user.id
  redirect to ("/profile/#{@user.id}")
end

get '/create_survey/:id' do
  p  @title = session[:title]

  user_id = params[:id]
  @user = User.find(user_id)

  erb :create_survey
end


post '/create_survey' do
  title = params[:title]
  user_id = session[:user_id]
  session[:title] = title
  redirect to ("/create_survey/#{user_id}")
end

post '/finished_survey' do
  survey_hash = JSON.parse(params[:info])
  user_id = session[:user_id]
  title = session[:title]
  survey = Survey.create(title: title, user_id: user_id)
  survey_hash.each_pair do |question_value, array_answers|
    question = Question.create(survey_id: survey.id, text: question_value)
    array_answers.each do |answer_value|
      answer = Answer.create(question_id: question.id, text: answer_value)
    end
  end
  user_id
end


post '/finished_survey/get' do
  user_id = session[:user_id]
  p "ENTRA AQUI"
  redirect to ("/profile/#{user_id}")
end


