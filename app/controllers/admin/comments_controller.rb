class Admin::CommentsController < ApplicationController

  def index
    @staff = Staff.all
  end

  def show
    @information = Information.find(params[:information_id])
    @comment = Comment.new
    #新着順で表示
    @comments = @information.comments.order(created_at: :desc)
  end

  def create
    @information = Information.find(params[:information_id])
    #連絡に紐付いたコメントを作成
    @comment = @information.comments.build(comment_params)
    @comment.admin_id = current_admin.id
    @comment.staff_id = @information.staff_id
    @comment.save
    render :index
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :admin_id, :staff_id, :information_id)
  end
end
