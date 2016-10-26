class CitiesController < ApplicationController
  
  def index
    @cities = City.all
  end

  def show
    @city = City.friendly.find(params[:id])
    @posts = @city.posts.order(created_at: :desc)

  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:success] = 'Thanks for exploring this City!'
      redirect_to city_path(@city)
    else
      flash[:error] = @city.errors.full_messages.to_sentence
      render :new
    end
  end

  private
  def city_params
    params.require(:city).permit(:name, :state, :country, :photo)
  end
end
