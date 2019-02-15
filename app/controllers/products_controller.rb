class ProductsController < InheritedResources::Base

  before_action :authenticate_admin_user!

  private

    def product_params
      params.require(:product).permit(:name, :description, :manufacturer, :price, :weight, :product_image, :paypal_button)
    end
end

