require 'stattleship'

module StattleAPI
    
# query_params.player_id = 'mlb-rougned-odor'
# query_params.stat = 'home_runs'
# query_params.type = 'baseball_hitter_stat'
# query_params.season_id = 'mlb-2016'
# query_params.interval_type = 'regularseason'
    Stattleship.configure do |config|
      config.api_token = '402f089e4d72762a28683eccef45ba28'
    end

  class StattleFetch
      
      def initialize
      end
      
      def playerstats(player_id, stat, season_id = 'mlb-2016', starts_on)
         type = 'baseball_hitter_stat'
          interval_type = 'regularseason'
          starts_on = '1/2/2016'
          @query_params = Stattleship::Params::BaseballTotalPlayerStatParams.new
          @query_params.player_id = player_id
          @query_params.stat = stat
          @query_params.interval_type = interval_type
          @query_params.season_id = season_id
          @query_params.type = type  
          @query_params.since = starts_on
          response = Stattleship::BaseballTotalPlayerStat.fetch(params: @query_params)
          return response          
      end
      
        def teams
            params = Stattleship::Params::BaseballTeamsParams.new
            response =teams_names = Stattleship::BaseballTeams.fetch(params: params)
            return response
        end
        
        def players(team_id='mlb-stl')
            params = Stattleship::Params::BaseballPlayersParams.new
            params.team_id = team_id   
            response = Stattleship::BaseballPlayers.fetch(params: params) 
            myarray = []
            response.each do |player|
                if player.active
                    myarray << player
                end
            end
            return myarray           
        end
  end
  
end