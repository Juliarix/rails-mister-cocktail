class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.save
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update
  end

  def delete
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:ingredient_id, :dose_id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :dose)
  end
end
