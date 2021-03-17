class Api::CflFootballController < ApplicationController

  def index
  
    response = HTTP.get("http://api.cfl.ca/v1/games/2015/game/2221?key=#{Rails.application.credentials.cfl_api[:api_key]}")
       render json: response.parse
   
   
   end

end
