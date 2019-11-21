require 'sinatra/base'
require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $p1 = Player.new(params[:p1_name])
  $p2 = Player.new(params[:p2_name])
  redirect :play
end

get '/play' do
  @p1_name = $p1.name
  @p2_name = $p2.name
  @p2_hit_points = $p2.hit_points
  erb :play
end

get '/attack' do
  @p1_name = $p1.name
  @p2_name = $p2.name
  $p1.attack($p2)
  erb :attack
end

run! if app_file == $0
end
