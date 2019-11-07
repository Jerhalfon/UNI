class FavoritesController < ApplicationController
  before_action :authenticate_user!
  include Pundit

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @program = Program.find(params[:program_id])
    @user = current_user
    @favorite = Favorite.new
    @favorite.program = @program
    @favorite.user = @user
    authorize @favorite
    @favorite.save
    redirect_to programs_path
  end
end
