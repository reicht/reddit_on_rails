class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.link_id = params[:link_id]
    @like.feels = params[:feels]
    @like.user_id = rand(1..30)

    @like.save
    redirect_to :back
  end

  def new
  end

  def destroy
  end
end
