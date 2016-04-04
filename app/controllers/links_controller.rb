class LinksController < ApplicationController
  def index
    page_set
    sorted = Link.sort_links
    @links = sorted.offset(@offset).limit(20)
  end

  def create
    @link = Link.new
    @link.title = params[:link][:title]
    @link.link = params[:link][:link]
    @link.user_id = params[:link][:user_id]

    if @link.save
      redirect_to link_path(@link.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! Link couldn't be created!"
      render :new
    end
  end

  def new
    @link = Link.new
  end

  def destroy
  end

  def show
    @link = Link.find(params["id"])
  end

  def page_set
    if params[:page].nil?
      @page = 1
    else
      @page = params[:page].to_i
    end
    if @page > 0
      @offset = @page * 20
    else
      @offset = 0
    end
  end

end
