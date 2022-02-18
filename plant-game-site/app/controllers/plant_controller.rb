class PlantController < ApplicationController
  
  def index
    flash[:notice] = "Your login was successful"
    flash[:alert] = "Invalid email or password"
  end

  def dashboard
  end

end
