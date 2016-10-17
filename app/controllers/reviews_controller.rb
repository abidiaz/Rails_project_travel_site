class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @review = Review.new(params[:id])
  end

  def create
  
    @review = Review.new(review_params)
    if @review.save
      redirect_to attraction_path(@review.attraction)
    else
      flash[:error] = @review.errors.messages
      redirect_to attraction_path(@review.attraction)
    end
  end

  def edit
    
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to attraction_path(@review.attraction)
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to attraction_path(@review.attraction)
  end
  private
  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :attraction_id)
  end
end
