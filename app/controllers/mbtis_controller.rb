class MbtisController < ApplicationController
  def description
    @mbti = Mbti.new
  end
end
