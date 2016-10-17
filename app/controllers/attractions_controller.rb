class AttractionsController < ApplicationController
  before_action :set_attraction_id, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show
  end

  def new
  end

  def create
    @attraction = Attraction.new(attractions_params)
    if @attraction.save
      @review = Review.new(review_params[:review])
      @review.attraction = @attraction
      if @review.save
        @attraction.reviews << @review
        redirect_to attraction_path(@attraction)
      else
        flash[:error] = @review.errors.full_messages
        redirect_to attraction_path(@attraction)
        # render partial:'form', locals: {attraction: @attraction}
      end 
    else
      flash[:error] = @attraction.errors.full_messages
      redirect_to city_path(@attraction.city)
      # render partial:'form', locals: {attraction: @attraction}
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

def attractions_params
  params.require(:attraction).permit(:name, :address, :contact_info,:city_id) 
end

def review_params
  params.require(:attraction).permit(review:[:content, :rating,:user_id])
end

def set_attraction_id
  @attraction = Attraction.find(params[:id])
end

end
