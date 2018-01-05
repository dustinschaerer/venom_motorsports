class MenuItemsController < ApplicationController

  before_action :authenticate_admin_user!
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]


  def index
    @sorted_menu_items = MenuItem.order(sort: :asc)
  end

  def show
    @menu_item = MenuItem.friendly.find(params[:id])
    # @menu_item_images = @menu_item.MenuItem_images.all
  end

  def new
    @menu_item = MenuItem.new
    @categories = Category.all
    # @menu_item_image = @menu_item.build_images.build
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    respond_to do |format|
      if @menu_item.save
        format.html { redirect_to menu_items_path, notice: 'Menu Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @menu_item.update(menu_item_params)
        format.html { redirect_to menu_items_path, notice: 'Menu Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @menu_item.destroy
    respond_to do |format|
      format.html { redirect_to menu_items_url }
    end
  end

  private

    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:label, :location, :menu_item_type_id, :html, :sort, :parent_id)
    end
end

