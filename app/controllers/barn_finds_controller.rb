class BarnFindsController < InheritedResources::Base
  before_action :set_barn_find, only: [:show, :edit, :update, :destroy]
  private

    def set_barn_find
      @barn_find = BarnFind.friendly.find(params[:id])
    end

    def barn_find_params
      params.require(:barn_find).permit(:title, :content, :teaser, :date_published,
        :published, :admin_user_id, :slug, :article_image, {supporting_images: []})
    end
end

