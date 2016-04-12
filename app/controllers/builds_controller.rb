class BuildsController < InheritedResources::Base
  before_action :set_build, only: [:show, :edit, :update, :destroy]
  private

    def set_build
      @build = Build.friendly.find(params[:id])
    end

    def build_params
      params.require(:build).permit(:title, :content, :teaser, :date_published, :published, :admin_user_id, :slug, :article_image)
    end
end

