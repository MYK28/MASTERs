class CommentsController < ApplicationController

  def create
    @information = Information.find(params[:information_id])
    #連絡に紐付いたコメントを作成
    @comment = @information.comments.build(comment_params)
    @comment.staff_id = current_staff.id
    @comment.admin_id = @information.admin_id
    @comment.save
    @comments = @information.comments.order(created_at: :desc)
    if current_staff
       @comments = @comments.where(:staff_id => current_staff.id)
    end
    render :index
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :staff_id, :admin_id, :information_id)
  end

end
