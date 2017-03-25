##
# {
#  "pledge" : {
#    "player_id" : "mlb-ben-zobrist",
#    "stat_category" : "home_runs",
#    "donation_amount" : 1,
#    "user_id" : 1
#   }
# }
post '/pledge' do
  payload = params
  payload = JSON.parse(request.body.read).symbolize_keys unless params[:path]

  @pledge = Pledge.new(payload[:pledge])
  if @pledge.save
    redirect '/pledges'
  else
    halt 500
  end
end

get '/pledges' do
  @pledges = Pledge.all
  erb :pledges
end


