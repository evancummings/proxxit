class ApiController < ApplicationController
  def index
  	render :json => HTTParty.get("http://www.reddit.com/.json")
  	#@jsonResp = HTTParty.get("http://www.reddit.com/.json")
  end

  def subreddit
  	render :json => HTTParty.get("http://www.reddit.com/r/" + params[:name] + "/.json"), :callback => params[:callback]
  end

  def comments

  	#uri = URI.parse("http://25.media.tumblr.com/avatar_279ec8ee3427_64.png")
	#data = open(uri).read
	#response = Net::HTTP.get_response("http://www.reddit.com/r/gaming/.json")
	#uri = URI.parse("http://www.reddit.com/r/gaming/.json")
	uri = URI.parse("http://www.reddit.com/r/" + params[:name] + "/comments/" + params[:id] + "/.json")	
	response = Net::HTTP.get_response(uri)
	render :json => response.body, :callback => params[:callback]
  	
  end

end
