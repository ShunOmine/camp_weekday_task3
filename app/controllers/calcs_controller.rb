class CalcsController < ApplicationController
  def show
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @calculation = params[:calculation]
    if @calculation == "addition"
      @answer = @number_one + @number_two
    elsif @calculation == "subtraction"
      @answer = @number_one - @number_two
    elsif @calculation == "multiplication"
        @answer = @number_one * @number_two
    elsif @calculation == "division"
      @answer = @number_one / @number_two
    end
  end
end
