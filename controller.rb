require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game')


also_reload('./models/*')

get '/rules' do
  erb(:rules)
end


get '/play/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @answer = game.play
  erb(:result)
end
