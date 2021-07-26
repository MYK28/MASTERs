class InformationsController < ApplicationController

  def index
    informations = []
    all_informations = Information.all
    all_informations.each do |information|
      unless information.checks.where(staff_id: current_staff.id).exists?
        informations.push(information)
      end
    end
    # @informations = informations.page(params[:page]).per(6)
    @informations = Kaminari.paginate_array(informations).page(params[:page]).per(2)

  end

  def checked
    informations = []
    all_informations = Information.all
    all_informations.each do |information|
      if information.checks.where(staff_id: current_staff.id).exists?
        informations.push(information)
      end
    end
    # @informations = informations.page(params[:page]).per(6)
    @informations = Kaminari.paginate_array(informations).page(params[:page]).per(2)
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