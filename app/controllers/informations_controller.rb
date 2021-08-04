class InformationsController < ApplicationController

  def index 
    checked_informations = Information.joins(:checks).where(checks: { staff_id: current_staff.id })
    non_checked_informations = Information.where.not(id: checked_informations.ids)
    @informations = Kaminari.paginate_array(non_checked_informations).page(params[:page]).per(6)
    
    #上記コードに変更
    # informations = [] 
    # all_informations = Information.all
    # all_informations.each do |information|
    #   unless information.checks.where(staff_id: current_staff.id).exists?
    #     informations.push(information)
    #   end
    # end
    # @informations = Kaminari.paginate_array(informations).page(params[:page]).per(6)

  end

  def checked
    checked_informations = Information.joins(:checks).where(checks: { staff_id: current_staff.id })
    checked_informations = Information.where(id: checked_informations.ids)
    @informations = Kaminari.paginate_array(checked_informations).page(params[:page]).per(6)
    
    #上記コードに変更
    # informations = []
    # all_informations = Information.all
    # all_informations.each do |information|
    #   if information.checks.where(staff_id: current_staff.id).exists?
    #     informations.push(information)
    #   end
    # end
    # @informations = Kaminari.paginate_array(informations).page(params[:page]).per(6)
  end

  def show
    @information = Information.find(params[:id])
    @comment = Comment.new
    #新着順で表示
    @comments = @information.comments.order(created_at: :desc)
    if current_staff
       @comments = @comments.where(:staff_id => current_staff.id)
    end
  end
end