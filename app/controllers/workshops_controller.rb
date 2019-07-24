class WorkshopsController < ApplicationController

  # before_action :find_workshop

  def index
    @workshops = Workshop.all
  end

  def show
  end

  def new
    @workshop = Workshop.new
  end

  def create
    @workshop = Workshop.new(workshop_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def workshop_params
  params.require(:workshop).permit(:date, :price, :title, :capacity)
  end

   # def find_workshop
   # @workshop = Workshop.find(params[:id])
   # end

end
