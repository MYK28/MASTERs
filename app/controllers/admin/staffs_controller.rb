class Admin::StaffsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @staffs = Staff.all.search(params[:search])
  end

  def show
    @staff = Staff.find(params[:id])
    @info_ids = @staff.checks.pluck(:information_id)
    @info_checked = Information.where(id: @info_ids)
    @info_unchecked = Information.where.not(id: @info_ids)
  end

  def edit
  end

  def update
  end

end
