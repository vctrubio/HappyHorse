class PlacesController < ApplicationController

  before_action :find_place, only: [:edit, :destroy, :show, :update]


  def show
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to root_path
    else
     render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @places = Place.all
  end

  def all
  end

  private

  def find_place
    @place = Place.find(params[:id])
    # authorize @place
  end

  def place_params
    params.require(:place).permit(:name, :address, :comment, :phone, :category, :rating, :country, :city, :photo, :longitude, :latitude, :user_id)
  end

end
