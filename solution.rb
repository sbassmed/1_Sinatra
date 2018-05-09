require 'sinatra'

get '/makers/:nombre' do
  "Hola #{params[:nombre].capitalize}!"
end

get '/' do
  unless params[:nombre] != nil && params[:nombre].capitalize == "Juan"
    "Hola desconocido!"
  else
    "<h1>Hola #{params[:nombre]}!</h1>"
  end
end
