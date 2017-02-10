class CartsController < ApplicationController

  before_action :set_cart, only: [:show, :update, :destroy]

  def show
  end

  def create
    @cart = Cart.new(cart_params)  
  end

  def update
    @cart = Cart.new(cart_params)
    @cart.save
    redirect_to cart_path(@cart)
  end

  def destroy
    @cart.destroy
  end

  private
    def cart_params
      params.require(:cart)
    end

    def set_cart
      @cart = Cart.find(params[:id])
    end
end
