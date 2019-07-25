class WorkshopsController < ApplicationController

  before_action :find_workshop, only: [:show]

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
      if @workshop.save
      redirect_to workshop_path(@workshop)
     else
     render :new
     end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def workshop_params
  params.require(:workshop).permit(:date, :price, :title, :capacity, :location, :category, :duration, :photo, :organisation)
  end

   def find_workshop
   @workshop = Workshop.find(params[:id])
   end

end
