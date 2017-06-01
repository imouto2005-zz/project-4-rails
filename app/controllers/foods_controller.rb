
class FoodsController < ApplicationController
  include HTTParty
  before_action :authenticate_user!

  def index
    @foods = Food.where(user_id: current_user.id)
    p @foods

    render json: @foods
  end

  def create
    p "Food params: #{params[:name]}"
    @food = Food.new(name: params[:name], cuisine: params[:cuisine], place: params[:place])
    @food.user_id = current_user.id
    @food.save!
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
  end

  def location_search
    api_key = ENV['GOOGLE_PLACES_API_KEY']
    location = params[:location]
    p params
    p "location: #{location}"
    response = HTTParty.get('https://maps.googleapis.com/maps/api/place/textsearch/json?query=restaurants+in+singapore+' + location + '&key=' + api_key)
    body = JSON.parse(response.body)
    render json: body
  end

  def update
  end

  def new
  end

  def show
  end

  def edit
  end

end
