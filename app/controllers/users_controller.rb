class UsersController < ApplicationController
  
  
  def index
    @users = User.all
    @user = current_user
    # p "-----------------------"
    # p @user
    # current_user.idは、idだけを渡しなさい、という意味になる。全部を渡すには.idをつけないで使う。
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
