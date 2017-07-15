class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end


  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image )
  end


end
