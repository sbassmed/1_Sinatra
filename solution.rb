require 'sinatra'

get '/makers/:nombre' do
  "Hola #{params[:nombre].capitalize}!"
end

get '/query' do
  unless params[:nombre] != nil && params[:nombre].capitalize == "Juan"
    "Hola desconocido!"
  else
    "<h1>Hola #{params[:nombre]}!</h1>"
  end
end
get'/' do
  erb :index
end
 post '/saludo' do
   "<h1>Hola #{params[:nombre]}</h1>"
 end
