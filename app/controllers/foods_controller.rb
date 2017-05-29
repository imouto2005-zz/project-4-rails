class FoodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = Food.where(user_id: current_user.id)
    p @foods

    render json: @foods
  end

  def create
    p "Food params: #{params}"
    @food = Food.new(name: params[:])
    @food.user_id = current_user.id
    @food.save
  end

  def update
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
  end

  def new
  end

  def show
  end

  def edit
  end
end
