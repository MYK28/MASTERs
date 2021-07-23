class Admin::RepliesController < ApplicationController

  def create
    reply = Reply.new(reply_params)
    if reply.save
      comment = Comment.find(params[:reply][:comment_id])
      comment.is_reply = true
      comment.save
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    Reply.find(params[:id])
    reply = Reply.find(params[:id])
    reply.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def reply_params
    params.require(:reply).permit(:reply, :comment_id)
  end
end
