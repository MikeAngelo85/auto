class AutomobilesController < ApplicationController

  def index 
    @automobiles = Automobile.all
    render :index
  end

  def show
    @automobile = Automobile.find(params[:id])
    @automobile
  end

  def new
    @automobile = Automobile.new
  end


    def create
      @automobile = Automobile.create(automobile_params)
    if @automobile.valid?
      redirect_to action: :index
    else
       render :new, status: :unprocessable_entity
    end

  end

private

  def automobile_params
    params.require(:automobile).permit(:year, :make, :model, :style, :transmission)
  end  
end
