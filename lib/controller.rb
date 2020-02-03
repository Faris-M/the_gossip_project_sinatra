require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do #première route
    erb :index
  end

  get '/gossips/new/' do # deuxieme route vers fichier gossip
      erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
  end
 


end