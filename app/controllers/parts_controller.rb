class PartsController < ApplicationController
  before_action :authenticate_admin_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  def index
    @parts = Part.all
  end

  def show
    @part = Part.find(params[:id])
  end

  def edit
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    respond_to do |format|
      if @part.save
        format.html { redirect_to @part, notice: 'Part was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /parts/1
  def update
    respond_to do |format|
      if @part.update(part_params)
        format.html { redirect_to @part, notice: 'Part was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url }
    end
  end

  private

    def set_part
      @part = Part.find(params[:id])
    end

    def part_params
      params.require(:part).permit(:name, :part_number, :amount, :notes, :part_image, :post_ids => [])
    end
end

