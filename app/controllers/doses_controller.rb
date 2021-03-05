class DosesController < ApplicationController
  def new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:id])

    flash[:error] = @dose.errors unless @dose.save
    flash[:redirect] = 'dose'

    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def single_dose
    @dose = Dose.find(params[:id])
  end
end
