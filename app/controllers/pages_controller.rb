class PagesController < ApplicationController
  def home
    @program = Program.new
    @countries = Location.all.map do |location|
      location.country
    end
    @duration = ["6 months", "12 months", "18 months", "24 months", "30 months", "36 months"]
    @levels = ["Bachelor", "Master"]
  end
end
