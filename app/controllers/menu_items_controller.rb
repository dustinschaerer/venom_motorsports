class MenuItemsController < InheritedResources::Base

  before_action :authenticate_admin_user!

  private

    def menu_item_params
      params.require(:menu_item).permit(:html, :sort)
    end
end

