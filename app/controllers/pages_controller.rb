class PagesController < ApplicationController
  def home
    @program = Program.new
    @countries = Location.all.map do |location|
      location.country
    end
  end
end
