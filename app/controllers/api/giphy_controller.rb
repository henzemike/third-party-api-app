class Api::GiphyController < ApplicationController
  def index
    response = HTTP.get("http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=#{ENV['API_KEY']}")
    render json: response.parse
    
  end
end
