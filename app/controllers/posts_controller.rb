class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post), notice: "Your letter has been published."
    else
      flash.alert = "Your letter could not be published, please make sure you filled out all of the required fields."
      render :new
    end
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :day, :body)
  end

end