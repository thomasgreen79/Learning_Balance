class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      flash[:success] = "Success!"
      redirect_to new_food_path
    else
      render 'new'
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(food_params)
      redirect_to foods_path
    else
      render 'edit'
    end
  end

  def show
    
  end

  def destroy
    Food.find(params[:id]).destroy
    redirect_to foods_path
  end

  private

    def food_params
      params.require(:food).permit(:name, :category, :flavor, :temperature, :tonifies, :regulates, :route)
    end
end
