class PlantController < ApplicationController
  
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    flash[:notice] = "Your login was successful"
    flash[:alert] = "Invalid email or password"
  end

  def dashboard
  end

end
