class ServicesController < InheritedResources::Base

  before_action :authenticate_admin_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service_images = @service.build_images.all
    @videos = Video.where(service_id: @service.id)
  end

  def new
    @service = Service.new
    @categories = Category.all
    @service_image = @service.build_images.build
  end

  def edit
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save

        if params[:build_images_attributes]
          params[:build_images_attributes]['image'].each do |i|
            # @build_image = @service.build_images.create!(:image => i, post_id: @service.id)
            @build_image = @service.build_images.create!(:image => i)
          end
        end

        format.html { redirect_to @service, notice: 'Service was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
       if @service.update(service_params)
        if params[:build_images_attributes]
          params[:build_images_attributes]['image'].each do |i|
            @build_image = @service.build_images.create!(:image => i)
          end
        end

        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

   def set_service
      @service = Service.friendly.find(params[:id])
    end


    def service_params
      params.require(:service).permit(:category_id, :title, :description, :link_text, :link_destination, :sort, :content, :teaser, :specs, :slug, :published_on, :published, :admin_user_id,
       :article_image, :article_image_cache, :part_ids => [], build_images_attributes: [:id, :image, :post_id, :_destroy])
    end
end

