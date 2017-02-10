class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def create
    @product = Product.new
    if @produce.create(product_params)
      redirect_to product_path(@product)
    else
    end
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :show
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path
    else
      render :show
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
