class CategoriesController < ApplicationController

  def index
    @category=Category.new
    @allcat=Category.all
  end

  def create
    @category=Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      redirect_to categories_path
    end
  end

  def show
    @category=Category.find(params[:id])
    @users=@category.users
  end

  protected
  def category_params
    params.require(:category).permit(:name)
  end



end
