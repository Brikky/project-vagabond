class CitiesController < ApplicationController
  def index
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts.order(created_at: :desc)
  end

  def new
  end

  def create
    if City.new(city_params).save
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
