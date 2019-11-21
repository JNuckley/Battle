require 'sinatra/base'
require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions
#puts the form on the home screen and title using the erb index file
get '/' do
  erb :index
end
#assigns the global variable of $p1 to p1_name to store
post '/names' do
  p1 = Player.new(params[:p1_name])
  p2 = Player.new(params[:p2_name])
  $game = Game.new(p1, p2)
  redirect :play
end
#assigning p2.hit_points to the instance variable for later use
get '/play' do
  @game = $game
  # @p1_name = $p1.name
  # @p2_name = $p2.name
  # @p2_hit_points = $p2.hit_points
  erb :play
end
#calling the attack method on the global variable for p1 to attack p2
get '/attack' do
  # @p1_name = $p1.name
  # @p2_name = $p2.name
  # Game.new.attack($p2)
  @game = $game
  @game.attack(@game.p2)
  erb :attack
end
#this allows programme to be run by just running the app file
run! if app_file == $0
end
