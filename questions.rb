class Question

  attr_accessor :firstNum :secondNum :answer

  def initialize
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)
    @answer = @firstNum + @secondNum
  end

end

