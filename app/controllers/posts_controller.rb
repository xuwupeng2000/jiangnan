class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :new, :create]

  def index
    @posts = policy_scope(Post)
  end

  def show
    authorize @post
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    authorize @post

    if @post.save
      redirect_to posts_path, success: 'Post was successfully updated'
    else
      render :new
    end
  end

  def update
    authorize @post

    if @post.update(post_params)
      redirect_to @posts, success: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @post

    if @post.destroy
      redirect_to posts_url, success: 'Post was successfully destroyed.'
    else
      redirect_to root_path, error: 'We are sorry but something went wrong.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post].permit([:title, :content])
    end
end
