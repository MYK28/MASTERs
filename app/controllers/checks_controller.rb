class ChecksController < ApplicationController
  before_action :information_params

  def create
    check = current_staff.checks.new(information_id: @information.id)
    check.save
  end

  def destroy
    @check = Check.find_by(staff_id: current_staff.id, information_id: @information.id).destroy
  end

  private

  def information_params
    @information = Information.find(params[:information_id])
  end
end
