class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :description, :manufacturer, :price, :weight, :product_image)
    end
end

