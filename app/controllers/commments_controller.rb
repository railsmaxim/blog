class CommmentsController < ApplicationController
  before_action :find_commmentable

  def new
    @commment = Commment.new
  end

  def create
    @commment = @commmentable.commments.new(commment_params)

    if @commment.save
      redirect_to :back,
      notice: 'Your Comment was successfully posted.'
    else
      redirect_to :back,
      notice: 'Your Comment Was not Posted.'
    end
  end

  private

  def find_commmentable
    @commmentable = Commment.find_by_id(
         params[:commment_id]
    ) if params[:commment_id]

    @commmentable = Post.find_by_id(
         params[:post_id]
    ) if params[:post_id]
  end

  def commment_params
    params.require(
      :commment
    ).permit(
      :body,
      :name,
      :proof
    )
  end
end
