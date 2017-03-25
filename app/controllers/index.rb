get '/' do
  # Look in app/views/index.erb
  @stattle = StattleAPI::StattleFetch.new
  @stats = @stattle.playerstats('mlb-bryce-harper','home_runs', '6/1/2016')
  @teams = @stattle.teams
  @players = @stattle.players('mlb-nyy')
  erb :index
end
