class Player 
  attr_accessor :name, :lives
    def initialize(name)
      @name = name
      @lives = 3
    end
  
    def lose_life
      @lives -= 1
    end
  
    def lost
      @lives == 0
    end
  
    def new_question
      new_question = Question.new
      new_question.ask_question(name)
      print 
      @choice = $stdin.gets.chomp
      if new_question.answer(@choice.to_i)
        puts "You are correct!"
      else 
        puts "Sorry, next time!"
        lose_life
      end
    end
  end