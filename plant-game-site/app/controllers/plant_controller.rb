class PlantController < ApplicationController
  
  def index
    flash[:notice] = "Login successful"
    flash[:alert] = "Invalid email or password"
  end

  def dashboard
  end

end
