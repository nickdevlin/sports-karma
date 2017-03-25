require 'stattleship'

Stattleship.configure do |config|
  config.api_token = '402f089e4d72762a28683eccef45ba28'
end

# query_params = Stattleship::Params::BaseballTotalPlayerStatParams.new
# query_params.player_id = 'mlb-rougned-odor'
# query_params.stat = 'home_runs'
# query_params.type = 'baseball_hitter_stat'
# query_params.season_id = 'mlb-2016'
# query_params.interval_type = 'regularseason'

#player = Stattleship::BaseballTotalPlayerStat.fetch(params: query_params)


def team_params
  Stattleship::Params::BaseballTeamsParams.new
end

teams = Stattleship::BaseballTeams.fetch(params: team_params)

# teams.each do |team|
#   puts team.name
# end

player_params = Stattleship::Params::BaseballPlayersParams.new
player_params.team_id = "mlb-nyy"
player_params.season_id = "mlb-2016"


players_on_team = Stattleship::BaseballPlayers.fetch(params: player_params)

players_on_team.each do |player|
  if player.years_of_experience.to_i > 0
    puts player.name
  end
end





