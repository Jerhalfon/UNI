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

  def edit
    # edit_program_review - GET    /programs/:program_id/reviews/:id/edit(.:format)  reviews#edit
    @program = Program.find(params[:program_id])
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    # program_review       - PATCH  /programs/:program_id/reviews/:id(.:format)       reviews#update

    @program = Program.find(params[:program_id])
    @user = current_user
    @review = Review.find(params[:id])
    @review.update(review_params)
    @review.program = @program
    @review.user = @user

    authorize @review

    redirect_to program_path(@program)
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

  def destroy
    @program = Program.find(params[:program_id])
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy

    redirect_to program_reviews_path(@program)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :title)
  end
end
