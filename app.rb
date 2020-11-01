require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  #enable sessions before using sessions
  enable :sessions

  get '/test' do
    'test page'
  end

  #request the homepage
  get '/' do
    erb :index
  end

  #In the 'player' path we make a post request once the name is submitted
  #The player name is stored in the session
  post '/player' do
    session[:name] = params[:name]
    redirect '/game'
  end

  #request the game page
  get '/game' do
    #get the name from the session store
    @name = session[:name]
    @shape = session[:shape]
    erb :game
  end

  post '/game' do
    session[:shape] = params[:shape]
    redirect '/game'
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
