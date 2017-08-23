class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post,
      notice: 'Post was updated.'
    else
      render :edit,
      notice: 'Post was not updated.'
    end
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
