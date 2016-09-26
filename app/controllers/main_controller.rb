class MainController < ApplicationController
  
  def home
  end

  def unregistered
  end

  def set_layout
  	return "landing" if action_name == "unregistered"
  	super	
  end
  
end
