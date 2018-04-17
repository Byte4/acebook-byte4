class DislikesController < ApplicationController
  before_action :set_dislike, only: [:show, :edit, :update, :destroy]

  # GET /dislikes
  # GET /dislikes.json
  def create
    dislike = Dislike.where('post_id = ? AND user_id = ?', params[:post_id], current_user.id)
    if dislike.count <= 0
      Dislike.create({'post_id': params[:post_id], 'user_id': current_user.id})
    else
      Dislike.destroy(dislike.first.id)
    end
    redirect_to posts_url

  end

end
