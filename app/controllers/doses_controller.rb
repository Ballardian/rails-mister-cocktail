class DosesController < ApplicationController
  before_action :find_cocktail, only: [:index, :show, :new, :create]

  def index
    @doses = Dose.new
  end

  def show
    # @reviews = Review.where(cocktail_id: @cocktail)
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.save
    redirect_to cocktail_path(@dose.cocktail)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
