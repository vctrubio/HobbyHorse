class UsersController < ApplicationController

  before_action :find_user, only: [:create, :show, :edit, :destroy, :update]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
          if @user.update(user_params)
      redirect_to user_path
    else
      render :update
    end
  end


  def create
  end

  def show
    @users = User.find(params[:id])
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
  params.require(:user).permit(:first_name, :last_name, :phone_number, :city)
  end

  def find_user
  @user = User.find(params[:id])
  end


end
