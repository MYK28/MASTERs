class Staff::StaffsController < ApplicationController
  before_action :authenticate_staff!

  def show
    @staff = Staff.find(current_staff.id)
    @info_ids = @staff.checks.pluck(:information_id)
    @info_checked = Information.where(id: @info_ids)
    @info_unchecked = Information.where.not(id: @info_ids)
  end

  def edit
    @staff = Staff.find(current_staff.id)
  end

  def update
    @staff = Staff.find(current_staff.id)
    @staff.update(staff_params)
    redirect_to staff_path(@staff)
  end

  private

  def staff_params
    params.require(:staff).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :profile_image)
  end
end
