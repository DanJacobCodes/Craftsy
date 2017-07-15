class ReviewsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review.destroy
    redirect_to products_path(@product)
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
   if @review.save
     redirect_to root_path, notice: "Review successfully added!"
   else
     render :new
   end
 end

  private
    def review_params
      params.require(:review).permit(:content,:user_id,:product_id)
    end
  end
