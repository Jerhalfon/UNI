class ProgramsController < ApplicationController
  include Pundit

  before_action :set_program, only: [:show]

  def index
    name = params[:program][:name]
    price = params[:program][:price] || (1..1000000)
    @programs = Program.search where: { name: /.*#{name}.*/}
    # , price: price
  end
  
  def show
  end

  def create
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end
end
