require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_hitpoints = $player_1.hitpoints
    @p2_hitpoints = $player_2.hitpoints
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @p2_hitpoints = $player_1.attack($player_2)
    erb :attack
  end

  run! if app_file == $0
end
