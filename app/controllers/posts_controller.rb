class PostsController < ApplicationController
  # before_action CommentsController.:index, only: [:index]
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    # CommentsController.index
    @posts = Post.all.reverse
    @comments = Comment.all
  end

  private

  def post_params
    params.require(:post).permit(:message, :created_at)
  end
end
