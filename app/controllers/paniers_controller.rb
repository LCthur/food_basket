class PaniersController < ApplicationController
  def index
    @paniers = Panier.all
  end

  def show
    @panier = Panier.find(params[:id])
  end

  def new
    @panier = Panier.new
  end

  def create
  end

  def delete
  end

  private

  def panier_params
    params.require(:panier).permit(:photo, :titre)
  end
end
