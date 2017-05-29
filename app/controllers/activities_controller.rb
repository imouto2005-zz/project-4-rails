require 'byebug'

class ActivitiesController < ApplicationController
  before_action :authenticate_user! # , only: [:index]
  def index
    p 'current user here'
    p current_user
    @activities = Activity.where(user_id: current_user.id)
    p @activities
    # @activities = {name: 'HIHIHI'}
    render json: @activities
  end

  def create
    p 'params'
    p params
    @activity = Activity.new(description: params[:data])
    # current_user.activities << Activity.new()
    @activity.user_id = current_user.id #current_user.id
    @activity.save
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    redirect_to(activity_path(@activity))
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
  end
  
  def edit
  end

  def show
  end

  def new
  end

  private

  def activity_params
    params.require(:activity).permit(:description)
  end
end
