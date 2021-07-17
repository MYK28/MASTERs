class Admin::StaffsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @staffs = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
    # @checks = @staff.checks.page(params[:page]).reverse_order
  end

  def edit
  end

  def update
  end

end
