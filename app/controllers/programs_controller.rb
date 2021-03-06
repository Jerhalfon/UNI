
class ProgramsController < ApplicationController

  include Pundit

  before_action :set_program, only: [:show]

  def index

    if params[:program].present?
      name = params[:program][:name]

      @all_duration = ["6 months", "12 months", "18 months", "24 months", "30 months", "36 months"]
      @levels = ["Bachelor", "Master"]
      @program = Program.new
      if params[:program].present?
        @name = params[:program][:name]

        price = params[:price].to_i.zero? ? (0..1000000000) : (0..params[:price].to_i)
        @location_id = params[:program][:university][:location_id]
        @category = params[:program][:category_id] == "" ? (0..100).to_a : (params[:program][:category_id].to_i)
        @input_duration = params[:program][:duration] == "" ? (0..150).to_a : (0..delete_month(params[:program][:duration])).to_a
        @input_level = params[:program][:level] == "" ? ["Bachelor", "Master"] : [params[:program][:level]]

        @programs = Program.search where: { name: /.*#{@name}.*/, price: price, category_id: @category, duration: @input_duration, level: @input_level }

        unless @location_id == ""
          @programs = @programs.select { |program| program.university.location.id == @location_id.to_i }
        end
      else
        @programs = Program.all
      end
    end
  end

  def show
    correct_uni = University.geocoded #returns programs with coordinates
    @marker = [{ lat: @program.university.latitude, lng: @program.university.longitude }] if correct_uni.include? @program.university
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

  def favorite
    @program = Program.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @program
      redirect_to :back, notice: 'Added to favorites'

    elsif type == "unfavorite"
      current_user.favorites.delete(@program)
      redirect_to :back, notice: 'Removed from favorites'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end
end

