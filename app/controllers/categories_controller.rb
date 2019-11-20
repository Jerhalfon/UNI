class CategoriesController < ApplicationController
  def show
    @program = Program.new
    @category = Category.find(params[:id])
    @duration = ["6 months", "12 months", "18 months", "24 months", "30 months", "36 months"]
    @levels = ["Bachelor", "Master"]
  end
end
