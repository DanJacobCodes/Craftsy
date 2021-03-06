class ProductsController < ApplicationController
  before_action :only => [:edit, :destroy]
  before_action :only => [:new, :edit, :destroy] do
   redirect_to new_user_session_path unless current_user && current_user.admin
 end


  def index
  @user = current_user
  @products = Product.all
end

def new
  @product = Product.new
end

def show
  @product = Product.find(params[:id])
  @review = Review.new
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to products_path(@product)
end

def edit
  @product = Product.find(params[:id])
end

def create
  @product = Product.new(product_params)
  if @product.save
    flash[:notice] = "Product successfully added!"
    redirect_to products_path
  else
    render :new
  end
end

def update

  @product = Product.find(params[:id])
  if @product.update(product_params)
    flash[:notice] = "Updated successfully"
    redirect_to products_path
  else
    render :edit
  end
end

def edit
@user = current_user
@product = Product.find(params[:id])
end

private
def product_params
  params.require(:product).permit(:name, :description, :price)
  end
end
