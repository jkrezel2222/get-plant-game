class PlantController < ApplicationController
  
  def index
    @plant = Plant.all
  end

  def dashboard
  end

  def new
    @plant = Plant.new
  end

  def create
     @plant = Current.user.plant.new(plant_params)
     if @plant.save
      redirect_to root_path, notice: "Thanks for your plant tip!"
     else
      render :new
     end
  end
  

  private
    
  def plant_params
      params.require(:plant).permit(:title, :image, :description, :email, :create, :plant_new)
  end


end
