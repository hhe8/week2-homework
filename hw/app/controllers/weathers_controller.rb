class WeathersController < ApplicationController
  def weather
    render "weather"
  end

  def current_condition
    render "current_condition"
  end
end
