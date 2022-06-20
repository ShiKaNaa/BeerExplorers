class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
    @user_beerquest = Beerquest.where(current_user == :user_id)
  end
end
