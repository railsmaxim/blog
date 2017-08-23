class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy

    redirect_to posts_path,
    notice: 'Post was successfully deleted.'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(
        :post
      ).permit(
        :title,
        :description,
        :image,
        :imagetwo,
        :imagethree
      )
    end
end
