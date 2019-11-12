class ProgramsController < ApplicationController
  include Pundit

  before_action :set_program, only: [:show]

  def index
    name = params[:program][:name]
    price = params[:price] == "" ? [1, 1_000_000_000] : [params[:price]]
    uni = params[:program][:university_id] == "" ? [1, 1_000_000_000] : [params[:program][:university_id]]

    @programs = Program.search where: { name: /.*#{name}.*/, university_id: { all: uni }, price: { all: price } }
    raise
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
