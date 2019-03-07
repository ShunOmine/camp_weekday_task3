module Common
  def calculation
    @number_one = params[:number_one].to_i
    @number_two = params[:number_two].to_i
    @calculation = params[:calculation]
    @answer = if @calculation == "addition"
                @number_one + @number_two
              elsif @calculation == "subtraction"
                @number_one - @number_two
              elsif @calculation == "multiplication"
                @number_one * @number_two
              elsif @calculation == "division"
                if @number_one >= @number_two
                  begin
                    @number_one / @number_two
                  rescue ZeroDivisionError
                    "divided by 0"
                  end
                else
                  @division_one = @number_one / @number_two
                  @division_two = @number_one % @number_two
                  "#{@division_one}..#{@division_two}"
                end
              end
  end
end
