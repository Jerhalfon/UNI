class Admin::UniversitiesController < ApplicationController
  def index
    @universities = University.all
    @university = University.first
  end

  def new
    @university = University.new
     authorize([:admin, @university])
  end

  def create
    @university = University.new(uni_params)
    @university.save
    redirect_to admin_universities_path
  end

  private

  def uni_params
    params.require(:university).permit(:name, :location_id)
  end
end
