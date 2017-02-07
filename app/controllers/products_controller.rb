class ProductsController < ApplicationController
  def index
    @products = Product.active.periscope(meta_filter)
  end

  private

    def meta_filter
      (params[:meta_filter] || ActionController::Parameters.new).permit!.to_h
    end
end
