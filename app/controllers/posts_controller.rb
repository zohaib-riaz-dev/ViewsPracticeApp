class PostsController < ApplicationController
  def index
    # @posts = Post.page(params[:page]).per(2)
    @posts = Post.includes(:comments).all.page(params[:page]).per(4)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
