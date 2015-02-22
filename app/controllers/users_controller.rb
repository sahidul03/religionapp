class UsersController < ApplicationController

  def new
    # raise params.inspect
    @category=Category.find(params[:category_id])
    @user=@category.users.new
  end

  def create
    # raise params.inspect
    @category=Category.find(params[:category_id])
    @user=@category.users.new(user_params)
    if @user.save
      redirect_to category_path(@category)
    else
      render "users/new"
    end
  end

  def show
    @category=Category.find(params[:category_id])
    @user=@category.users.find(params[:id])
    # raise @user.inspect
  end

  protected
  def user_params
    params.require(:user).permit(:name,:father_name,:mother_name,:age,:nationality,:email,:education)
  end

end
