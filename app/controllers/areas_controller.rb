class AreasController < ApplicationController

  def index
    @areas = Area.where('creator = ?', current_user.email)
  end

  def show
    @protocols = Area.find(params[:id]).protocols
    if current_user.email == Area.find(params[:id]).creator
      @area = Area.find(params[:id])
    else
      redirect_to hep_path
    end
  end

  def new
    @area = Area.new
  end

  def edit
    @area = Area.find(params[:id])
  end

  def create
    @area = Area.new(area_params)
    @area.creator = current_user.email
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
    params.require(:area).permit(:title, :content, :members, :d_day, :protocols)
  end

  def user_creator(area)
    User.find_by(email: area.creator)
  end
end
