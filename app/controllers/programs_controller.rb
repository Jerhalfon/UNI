class ProgramsController < ApplicationController
  include Pundit

  before_action :set_program, only: [:show]

  def index
    @programs = Program.all
  end

  def show
    correct_uni = University.geocoded #returns flats with coordinates
    @marker = { lat: @program.university.latitude, lng: @program.university.longitude } if correct_uni.include? @program.university

  end

  private

  def set_program
    @program = Program.find(params[:id])
  end
end
