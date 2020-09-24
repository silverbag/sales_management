class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/leads/#{comment.lead.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, lead_id: params[:lead_id])
  end
end
