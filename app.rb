# in app.rb
require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do
    'ROCK SCISSORS PAPERS'
  end
  get '/rsp' do
    @name = ["Michelle", "Malu", "Henry"].sample
    erb(:index)
  end
  run! if app_file == $0
end

#<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
#How to make it responsive?