class LikesController < ApplicationController

  # POST /likes
  # POST /likes.json
  def create
    like = Like.where('post_id = ? AND user_id = ?', params[:post_id], current_user.id)
    if like.count <= 0
      Like.create({'post_id': params[:post_id], 'user_id': current_user.id})
      respond_to do |format|
        format.html { redirect_to authenticate_root_path }
        format.js
      end
    else
      Like.destroy(like.first.id)
      # redirect_to authenticate_root_path
    end
    redirect_to posts_url
  end
end
