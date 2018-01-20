require "sinatra/base"
require './lib/player'
require './lib/game'
require './lib/ai'

class Rps < Sinatra::Base

  # enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    @player = Player.new(params[:player])
    # redirect "/play"
    erb :play
  end

  get '/play' do
    @player.save_choice(params[:choice]) 
    erb :result
  end

  run! if app_file == $0
end
