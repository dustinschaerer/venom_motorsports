class CategoriesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @posts = @category.posts
  end

  def edit
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save(category_params)
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    begin
      @category.destroy
    rescue ActiveRecord::InvalidForeignKey
      redirect_to category_path(@category), notice: "You Cannot Destroy a Category that contains Posts/Projects. You must delete those first."
    else
      redirect_to root_path, notice: 'Post was successfully destroyed.'
    end
  end


  private

    def set_category
      @category = Category.friendly.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :sort, :slug)
    end
end

