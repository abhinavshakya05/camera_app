class CartsController < ApplicationController
  def add_product_to_cart
    @cart = current_user.cart
    @product = Product.where(id: params[:product_id]).take
    if (@cart.product = @product) && @cart.save
      render json: @cart.product, status: :created, location: @cart.product
    else
      render json: {msg: 'Please check the product ID.'}, status: :unprocessable_entity
    end
  end

  def cart
    @cart = current_user.cart
    if @cart.product.present?
      render json: @cart.product, status: :found, location: @cart.product
    else
      render json: {msg: 'Empty cart!'}, status: :found
    end
  end
end