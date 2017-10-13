class FootersController < ApplicationController

  before_action :set_footer, only: [:show, :edit, :update]

  def index
    @footer = Footer.all.first
  end

  def show
  end

  def edit

  end

  def create
    @footer = Footer.new(footer_params)
    if @footer.save
      redirect_to @footer, notice: 'Color was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    # raise footer_params.inspect
    respond_to do |format|
      logger.info "BEFORE SAVE"
      if @footer.update(footer_params)
        logger.info "INSIDE SAVE"
        logger.info footer_params.inspect
        format.html { redirect_to root_path, notice: 'Footer was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_footer
      @footer = Footer.find(params[:id])
    end

    def footer_params
      params.require(:footer).permit(:first_column, :second_column, :third_column, :links, :copyright)
    end
end

