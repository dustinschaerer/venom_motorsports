class MenuItemTypesController < InheritedResources::Base

  private

    def menu_item_type_params
      params.require(:menu_item_type).permit(:name, :html, :sort)
    end
end

