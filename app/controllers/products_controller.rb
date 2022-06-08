class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = current_user.products
  end

  def new
  end

  def create
    product = Product.new(product_params)
    product.user_id = current_user.id

    if product.save
      redirect_to products_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :quantity, :price)
  end
end
