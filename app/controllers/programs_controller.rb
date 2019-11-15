class ProgramsController < ApplicationController
  include Pundit

  before_action :set_program, only: [:show]

  def index
    if params[:program].present?
      name = params[:program][:name]
      price = params[:price].to_i.zero? ? (0..1000000000) : (0..params[:price].to_i)
      location_id = params[:program][:university][:location_id]
      category = params[:program][:category_id] == "" ? (0..100).to_a : (params[:program][:category_id].to_i)
      duration = params[:program][:duration] == "" ? (0..150).to_a : (0..delete_month(params[:program][:duration])).to_a
      level = params[:program][:level] == "" ? ["Bachelor", "Master"] : [params[:program][:level]]

      @programs = Program.search where: { name: /.*#{name}.*/, price: price, category_id: category, duration: duration, level: level }

      unless location_id == ""
        @programs = @programs.select { |program| program.university.location.id == location_id.to_i }
      end
    else
      @programs = Program.all
    end
  end

  def show
    correct_uni = University.geocoded #returns programs with coordinates
    @marker =[ { lat: @program.university.latitude, lng: @program.university.longitude }] if correct_uni.include? @program.university
  end

  def create
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def delete_month(choice)
    choice.split(' ').first.to_i
  end
end
