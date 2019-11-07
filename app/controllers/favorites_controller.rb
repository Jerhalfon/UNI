class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = Favorite.all.where(user: @user)
  end

  def create
    @program = Program.find(params[:program_id])
    @user = current_user
    @favorite = Favorite.new
    @favorite.program = @program
    @favorite.user = @user
    @favorite.save
    redirect_to programs_path
  end
end
