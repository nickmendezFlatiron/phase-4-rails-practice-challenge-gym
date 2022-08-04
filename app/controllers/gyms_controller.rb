class GymsController < ApplicationController

  def show 
    render json: find_gym , status: :ok
  end 

  def index
    render json: Gym.all , status: :ok
  end 

  def destroy
    find_gym.destroy
    head :no_content
  end 

  private

  def find_gym
    gym = Gym.find(params[:id])
  end
end


