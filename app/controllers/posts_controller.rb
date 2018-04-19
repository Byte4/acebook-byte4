class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_post, only: %i[edit show update destroy]

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

  def edit; end

  def update
    if @post.user == current_user

      @post.update(post_params)
      flash[:notice] = 'Post updated.'
      redirect_to posts_path
    else
      flash[:alert] = 'You cannot edit this post.'
      render :edit
    end
  end

  def destroy
    if @post.user == current_user
      @post.destroy
      flash[:notice] = 'Your post has been successfully deleted.'
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:message, :created_at)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
