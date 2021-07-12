class Admin::InformationsController < ApplicationController
  before_action :authenticate_admin!

  def index
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to admin_informations_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :message)
  end
end
