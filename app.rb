# in app.rb
require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
  end
  get '/' do
    erb :index
  end
  get '/names' do
    session[:Player] = params[:player_name]
    erb :play
    redirect '/play'
    #"Hello World"
  end
  post '/names' do
    session[:Player] = params[:player_name]
    erb :play
    redirect '/play'
    #"Hello World"
  end
  get '/play' do
    @player = session[:player_name]
    erb :play
    #"Hello World"
  end
  run! if app_file == $0
end

#<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
#How to make it responsive?