get '/' do
  erb :index #corre el index.erb
end

get '/:new_word' do
  @new_word = params[:new_word] #obtiene palabra(parametro)
  @anagrams = Word.get_anagrams(@new_word) #va al modelo y corre el método y guarda el arreglo de resultados
  erb :word #corre la vista
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end