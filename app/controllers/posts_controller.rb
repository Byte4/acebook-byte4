class PostsController < ApplicationController
  # before_action :authenticate_user!, except: [:index]

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_url
  end

  def index
    @posts = Post.all.reverse
    @likes = Like.all
  end

  private

  def post_params
    params.require(:post).permit(:message, :created_at)
  end
end
