class UsersController < ApplicationController
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.profile_pic = params[:user][:profile_pic]

    if @user.save
      redirect_to user_path(@user.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! User couldn't be created!"
      render :new
    end
  end

  def destroy
  end

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params["id"])
  end
end
