get '/' do
<<<<<<< HEAD
  # Look in app/views/index.erb
  @stattle = StattleAPI::StattleFetch.new
  @stats = @stattle.playerstats('mlb-bryce-harper','home_runs', '6/1/2016')
  @teams = @stattle.teams
  @players = @stattle.players('mlb-nyy')
=======
  @teams =
>>>>>>> 1a33f5a6937bde4b227442e5fb65dea07a839ed5
  erb :index
end
