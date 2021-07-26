class Admin::CommentsController < ApplicationController

  def index
    @comments = Comment.where(is_reply: false).page(params[:page]).per(6)
  end

  def show
    @comment = Comment.find(params[:id])
    @information = @comment.information
    @reply = @comment.replies.new

    #新着順で表示
    @staff_comments = @information.comments.where(staff_id: @comment.staff_id)
  end

  def create
    @information = Information.find(params[:comment][:information_id])

    #連絡に紐付いたコメントを作成
    @comment = @information.comments.build(comment_params)
    @comment.admin_id = current_admin.id
    @comment.save
    redirect_to admin_comment_path(@comment)
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
