class CartsController < ApplicationController

  before_action :set_cart

  def show
  end

  def update
    @product = Product.find(params[:product_id])
    Purchase.create(cart_id: @cart.id, product_id: @product.id)
    flash[:success] = 'Added To Cart'
    redirect_to product_path(@product)
  end

  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    @purchase.destroy
    flash[:success] = 'Removed From Cart'
    redirect_to cart_path(@cart)
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end
end
