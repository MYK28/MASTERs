class Admin::InformationsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @informations = Information.all
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.admin_id = current_admin.id
    if @information.save
      redirect_to admin_information_path(@information)
    else
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    @information.save
    redirect_to admin_information_path
  end

  def destroy
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :message)
  end
end
