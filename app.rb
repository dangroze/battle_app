require 'sinatra/base'

class Battle < Sinatra::Base
  get 'greeting' do
    'Hello Battle!'
  end

  get '/' do
    'Testing infrastructure working!'
  end

  run! if app_file == $0
end
