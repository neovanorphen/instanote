class MainController < ApplicationController
  
  def home
    @posts = Post.all
    @post  = Post.new
  end

  def unregistered
  end

  def set_layout
  	return "landing" if action_name == "unregistered"
  	super	
  end
  
end
