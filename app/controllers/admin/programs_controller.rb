class Admin::ProgramsController < ApplicationController
  def new
    @university = University.find(params[:university_id])
    @program = Program.new
  end

  def create
    @university = University.find(params[:university_id])
    @category = Category.find(params[:program][:category_id])
    @program = Program.new(program_params)
    @program.university = @university
    @program.category = @category
    if @program.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def program_params
    params.require(:program).permit(:name, :price, :description, :duration, :level, :category)
  end
end
