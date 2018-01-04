class ServicesController < InheritedResources::Base

  before_action :authenticate_admin_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service = Service.friendly.find(params[:id])
    # @service_images = @service.service_images.all
  end

  def new
    @service = Service.new
    @categories = Category.all
    # @service_image = @service.build_images.build
  end

  def edit
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: 'Service was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path, notice: 'Service was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

   def set_service
      @service = Service.friendly.find(params[:id])
    end


    def service_params
      params.require(:service).permit(:title, :description, :link_text, :link_destination, :sort, :slug)
    end
end

