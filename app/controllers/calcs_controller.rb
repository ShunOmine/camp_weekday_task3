class CalcsController < ApplicationController
  def addition
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @answer = @number_one + @number_two
  end
  def subtraction
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @answer = @number_one - @number_two
  end
  def multiplication
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @answer = @number_one * @number_two
  end
  def division
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @answer = @number_one / @number_two
  end
end
