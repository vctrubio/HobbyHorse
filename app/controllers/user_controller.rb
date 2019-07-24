class UserController < ApplicationController

  before_action :find_user, only: [:create, :show, :edit, :destroy]

  def index
    @users = Users.all
  end

  def show
  end

  def edit
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

  def find_user
  @user = User.find(params[:id])
  end


end
