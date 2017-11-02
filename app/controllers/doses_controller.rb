class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_dose, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    @dose.destroy!
  end

  private

  def dose_params
    params.require(:dose).permit(:id)
  end

  def set_dose
    @dose = Dose.find(params[:ingredient_id, :cocktail_id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:ingredient_id, :dose_id])
  end

end
