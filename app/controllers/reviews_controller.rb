class ReviewsController < ApplicationController
  before_action :find_list, except: [:destroy]

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private

  def find_list
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
