class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = User.first.products
  end
end
