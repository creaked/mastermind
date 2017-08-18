require_relative 'board'
require_relative 'codemaker'
require_relative 'codebreaker'

require 'rainbow'

class Game
  def initialize
    @board = Board.new
    @guess = Array.new
    @guess_count = 0
  end
  
  def instructions
    puts "Mastermind Game"
    puts "When prompted enter 4 colors in the order you would like to guess them with a space between each color"
    puts "Ex: red green yellow blue\n\n"
    puts "You are able to chose from the following colors:"
    $colors.each { |color| print Rainbow(color).color(color) + " "}
    puts "\n\n"
  end
  
  # Play the game
  def play
    instructions
    @board.draw_blank
    until win or lose
      guess
    end
  end
  
  private
  
  def guess
    puts "Please enter 4 colors:"
    guess = gets.chomp.downcase
    @guess = guess.to_s.split(/\s/)
    #verify_guess
    correct_color?(@guess)
    correct?(@guess)
    
    puts "\nCorrect colors:"
    @correct_colors.each { |color| print Rainbow(color).color(color.to_sym) + " "}
    puts "\nCorrect color and position:"
    @correct.each { |color| print Rainbow(color).color(color.to_sym) + " "}
    puts "\n\n"
    
    puts "Remember you are able to chose from the following colors:"
    $colors.each { |color| print Rainbow(color).color(color) + " "}
    puts "\n\n"
    
    @guess_count += 1
  end
  
  # Checks if each guess is in $colors
  # Checks if @guess array is longer then 4 elements
  def verify_guess
  end
  
  # Checks if guess color is in $code array
  def correct_color?(array)
    @correct_colors = array & $code_strings
  end
  
  # Checks if guess color and position are correct with $code array
  def correct?(array)
    @correct = Array.new
    array.each do |color|
      @correct.push(color) if $code_strings.index(color) == @guess.index(color)
    end
  end
  
  # Checks if player has won
  def win
    if @guess == $code_strings
      puts Rainbow("You win!").color(:green)
      @board.draw
      true
    else
      false
    end
  end
  
  # You only get 12 shots
  def lose
    if @guess_count >= 12
      puts Rainbow("You lose!").color(:red)
      true
    else
      false
    end
  end
end