class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authorize_admin!, except: [:index, :show]

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "Category was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "Category was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Category was successfully deleted."
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def authorize_admin!
    redirect_to categories_path, alert: "You are not authorized to perform this action." unless current_user&.is_admin?
  end
end
