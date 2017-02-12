class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product Added"
      redirect_to product_path(@product)
    else
      @products = Product.all
      flash.now[:error] = @product.errors.full_messages.join('.')
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      flash.now[:error] = @product.errors.full_messages.join('.')
      render :show
    end
  end

  def destroy
    if @product.destroy
      @products = Product.all
      flash.now[:success] = "Product Deleted"
      render :index
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
