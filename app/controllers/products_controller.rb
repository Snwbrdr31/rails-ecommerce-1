class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Products.all
  end

  def show
  end

  def create
    @product = Product.new
  end

  def update
  end

  def destroy
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
