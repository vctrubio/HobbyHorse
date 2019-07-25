class OrganisationsController < ApplicationController

  before_action :find_organisation, only: [:show, :destroy, :update, :edit]

  def index
  @organisations = Organisation.all
  end

  def show
  end

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(organisation_params)
     if @organisation.save
      redirect_to organisation_path(@organisation)
     else
     render :new
     end
  end

  def edit
  end

  def update
      if @organisation.update(organisation_params)
      redirect_to organisation_path
    else
      render :update
    end
  end

  def destroy
  @organisation.destroy
  redirect_to organisations_path
  end

  private

  def organisation_params
    params.require(:organisation).permit(:name, :location, :city, :description, :rating)
  end

  def find_organisation
    @organisation = Organisation.find(params[:id])
  end


end
