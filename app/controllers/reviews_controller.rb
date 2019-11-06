class ReviewsController < ApplicationController
  def new
    @program = Program.find(params[:program_id])
    @review = Review.new
  end

  def create
    @program = Program.find(params[:program_id])
    @user = current_user
    @review = Review.new(review_params)
    @review.program = @program
    @review.user = @user
    if @review.save
      # TODO: change it to index reviewq
      redirect_to program_path(@program)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :title)
  end
end
