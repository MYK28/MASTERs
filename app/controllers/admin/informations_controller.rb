class Admin::InformationsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @informations = Information.all.page(params[:page]).per(6)
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

  def commented
    @comments = Comment.where(is_reply: true)
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      @information.checks.delete_all
      redirect_to admin_information_path(@information.id)
    else
      render :edit
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
    redirect_to admin_informations_path
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :message)
  end
end
