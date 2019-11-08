class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: :index
  after_action :verify_authorized, except: :index

  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @program = Program.find(params[:program_id])
    @reviews = @program.reviews
  end

  def new
    @program = Program.find(params[:program_id])
    @review = Review.new
    authorize @review
  end

  def create
    @program = Program.find(params[:program_id])
    @user = current_user
    @review = Review.new(review_params)
    authorize @review
    @review.program = @program
    @review.user = @user

    @show_reviews = true

    if @review.save
      render 'programs/show'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :title)
  end
end
