class VideosController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:index, :new, :create, :edit, :update, :destroy]
  private

    def video_params
      params.require(:video).permit(:post_id, :url, :description)
    end
end

