class Admin::StaffsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @staffs = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
  end

  def update
  end

end
