class VideosController < InheritedResources::Base

  private

    def video_params
      params.require(:video).permit(:post_id, :url, :description)
    end
end

