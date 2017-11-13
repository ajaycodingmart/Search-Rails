class HomeController < ApplicationController
  def index
    require 'net/http'
    if request.xhr?
      data = params[:data] 
      searchstring = data
      baseurl = 'https://www.cleartrip.com/places/airports/search?string='
      baseurl+=searchstring
      url = URI.parse(baseurl)
      res = Net::HTTP.get(URI.parse(baseurl))
      jsonResponse = JSON.parse(res)
      render :json => jsonResponse
    end
  end
end
