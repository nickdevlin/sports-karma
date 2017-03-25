require 'stattleship'

Stattleship.configure do |config|
  config.api_token = '402f089e4d72762a28683eccef45ba28'
end

query_params = Stattleship::Params::BaseballTotalPlayerStatParams.new
query_params.player_id = 'mlb-rougned-odor'
query_params.stat = 'home_runs'
query_params.type = 'baseball_hitter_stat'
query_params.season_id = 'mlb-2016'
query_params.interval_type = 'regularseason'

players = Stattleship::BaseballTotalPlayerStat.fetch(params: query_params)

puts players
