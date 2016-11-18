class FootersController < InheritedResources::Base

  before_action :authenticate_admin_user!

  def index
    @footer = Footer.last
  end

  def update
    respond_to do |format|
      if @footer.update(footer_params)
        format.html { redirect_to footers_path, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def footer_params
      params.require(:footer).permit(:first_column, :second_column, :third_column, :links, :copyright)
    end
end

