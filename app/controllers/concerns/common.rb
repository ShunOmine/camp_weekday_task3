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
      begin
        @division = @number_one.divmod(@number_two)
        @answer = "#{@division[0]}..#{@division[1]}"
      rescue ZeroDivisionError
        @answer = "divided by 0"
      end
    end
  end
end