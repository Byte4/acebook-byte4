class PostsController < ApplicationController
  def new
    @post = current_user.posts.build
    # @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    # @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_url
  end

  def index
    @posts = Post.all.reverse
  end

  private

  def post_params
    params.require(:post).permit(:message, :created_at)
  end
end
