class InformationsController < ApplicationController

  def index
    @informations = Information.all
  end

  def show
    @information = Information.find(params[:id])
    @comment = Comment.new
    #新着順で表示
    @comments = @information.comments.order(created_at: :desc)
  end

end