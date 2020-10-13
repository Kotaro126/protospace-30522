class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
  end

  private
  def user_params
    params.require(:user, :prototype).permit(:name, :profile, :occupation, :position, :title, :catch_copy, :concept, :image)
  end
end