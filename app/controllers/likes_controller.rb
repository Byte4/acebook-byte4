class LikesController < ApplicationController

  # POST /likes
  # POST /likes.json
  def create
    like = Like.where('post_id = ? AND user_id = ?', params[:post_id], current_user.id)
    if like.count <= 0
      Like.create({'post_id': params[:post_id], 'user_id': current_user.id})
    else
      Like.destroy(like.first.id)
    end
    redirect_to posts_url

  end

end
