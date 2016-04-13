class BuildImagesController < InheritedResources::Base

  private

    def build_image_params
      params.require(:build_image).permit(:build_id, :image)
    end
end

