
class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]

  def index
    @builds = Build.all
  end

  def show
    @build_images = @build.build_images.all
  end

  def new
    @build = Build.new
    @build_image = @build.build_images.build
  end

  def edit
  end

  # POST /builds
  # POST /builds.json
  def create
    @build = Build.new(build_params)

    respond_to do |format|
      if @build.save

        params[:build_images]['image'].each do |i|
          @build_image = @build.build_images.create!(:image => i)
        end

        format.html { redirect_to @build, notice: 'Build was successfully created.' }
        # format.json { render :show, status: :created, location: @build }
      else
        format.html { render :new }
        # format.json { render json: @build.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @build.update(build_params)
        format.html { redirect_to @build, notice: 'Build was successfully updated.' }
        format.json { render :show, status: :ok, location: @build }
      else
        format.html { render :edit }
        format.json { render json: @build.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @build.destroy
    respond_to do |format|
      format.html { redirect_to builds_url, notice: 'build was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_build
      @build = Build.friendly.find(params[:id])
    end

    def build_params
      params.require(:build).permit(:title, :content, :teaser, :date_published, :published, :admin_user_id, :slug, :article_image, build_images_attributes: [:id, :build_id, :image])
    end
end

