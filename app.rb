require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @p1_hitpoints = $game.player1.hitpoints
    @p2_hitpoints = $game.player2.hitpoints
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @p2_hitpoints = @game.attack(@game.player2)
    erb :attack
  end

  run! if app_file == $0
end
