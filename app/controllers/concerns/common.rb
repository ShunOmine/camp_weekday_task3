module Common
  def calculation
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
      if @number_one >= @number_two
        begin
          @answer = @number_one / @number_two
        rescue ZeroDivisionError
          @answer = "divided by 0"
        end
      else
        @division_one = @number_one / @number_two
        @division_two = @number_one % @number_two
        @answer = "#{@division_one}..#{@division_two}"
      end
    end
  end
end
