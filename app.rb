require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @p1_hit_points = 60
    @p2_hit_points = 60
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    session[:p1_hit_points] = @p1_hit_points
    session[:p2_hit_points] = @p2_hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

  run! if app_file == $0
end
