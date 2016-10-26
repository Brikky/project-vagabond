class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    if params[:id].to_i == 0
      name = params[:id].gsub('-',' ').split.map(&:capitalize).join(' ')
      @city = City.friendly.find_by({name: name})

    else
      @city = City.find(params[:id])
      redirect_to city_path(@city)
    end
    @posts = @city.posts.order(created_at: :desc)

  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.name = @city.name.downcase.split.map(&:capitalize).join(' ')
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
