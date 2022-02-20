class PlantController < ApplicationController
  
# before_action :require_user_logged_in!
# Insert code here if user logged in then (generate below), else error

  def index
  end

  def dashboard
  end

  def new
    @plant = Plant.new
  end

end
