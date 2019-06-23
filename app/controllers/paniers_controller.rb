class PaniersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @navbar_visible = true
    @paniers = Panier.all
  end

  def show
    @panier = Panier.find(params[:id])
  end

  def new
    @panier = Panier.new
    @aliments = []
    Aliment.all.each { |aliment| @aliments << aliment.description }
  end

  def create
    @panier = Panier.new(panier_params)
    @panier.user = current_user
    if @panier.save
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
  end

  private

  def panier_params
    params.require(:panier).permit(:titre, :category, :deadline, :tag_list, :photo_cache, :photo)
  end
end
