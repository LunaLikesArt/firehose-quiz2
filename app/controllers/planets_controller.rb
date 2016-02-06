class PlanetsController < ApplicationController
  
  def index
    @planets = Planet.all
  end
  
  def new
    @planet = Planet.new
  end
  
  def create
    @planet = Planet.create(planet_params)
    if @planet.invalid?
      flash[:error] = 'Did you enter a planet and the distance from earth?'
    end
    redirect_to root_path
  end
  
  private
  
  def planet_params
    params.require(:planet).permit(:name, :distance)
  end
  
end
