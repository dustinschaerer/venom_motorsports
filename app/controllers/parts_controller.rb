class PartsController < InheritedResources::Base

  private

    def part_params
      params.require(:part).permit(:name, :part_number, :amount, :notes, :part_image)
    end
end

