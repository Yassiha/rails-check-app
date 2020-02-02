class AreaUsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if user_from_email(members_params[:email])
      member = user_from_email(members_params[:email])
      area = Area.find(params[:area_id])
      a = AreaUser.new(user: member, area: area)
      a.save
      redirect_to area_path(area)
    else
      redirect_to about_path
    end
  end

  def destroy
  end

  private

  def user_from_email(email)
    User.find_by(email: email)
  end

  def members_params
    params.require(:user).permit(:email)
  end
end
