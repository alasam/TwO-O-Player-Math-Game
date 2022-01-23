class Match
  def initialize(name)
    @name = name
    @p1 = Player.new("Player One")
    @p2 = Player.new("Player Two")
  end

  def start 
    puts "New game! Lets start!"
    self.turn
  end

  def turn 
    puts "Next Turn!"
    @p1.new_question
    self.score
    @p2.new_question
    self.score
    self.result
    self.turn
  end

  def score
    if @p1.lost 
      winner(@p2)
    elsif @p2.lost
      winner(@p1)
    end
  end
  
  def winner(name)
    puts "The winner is #{name.name}!"
    puts "#{name.lives}/3 lives left"
    exit(0)
  end

  def result 
    puts "#{@p1.lives}/3 lives left vs #{@p2.lives}/3 lives left"
  end
end