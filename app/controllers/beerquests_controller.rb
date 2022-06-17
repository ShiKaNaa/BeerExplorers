class BeerquestsController < ApplicationController
  def index
    @beerquests = Beerquest.all
    @beerquest_new = Beerquest.new
  end

  def create
    @beerquest = Beerquest.new(beerquest_params)
    @beerquest.user = current_user
    @beerquest.save!
    redirect_to beerquests_path
    # else
    #   render :index
    # end
  end

  private

  def beerquest_params
    params.require(:beerquest).permit(:name, :beer_id, :bar_id)
  end

end
