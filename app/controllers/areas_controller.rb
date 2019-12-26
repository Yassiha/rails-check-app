class AreasController < ApplicationController
   def index
    @areas = Area.all
  end

  def show
    @protocols = Area.find(params[:id]).protocols
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def edit
    @area = Area.find(params[:id])
  end

  def create
    @area = Area.new(area_params)
    @area.save

    redirect_to areas_path
  end

  def update
    @area = Area.find(params[:id])
    @area.update(area_params)

    redirect_to area_path(@area)
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy

    redirect_to areas_path
  end

  private

  def area_params
    params.require(:area).permit(:title, :content, :protocols)
  end
end
