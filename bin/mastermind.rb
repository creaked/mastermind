require_relative '../lib/mastermind'

game = Game.new
game.play

play_again = "y"
until play_again != "y"
  puts "Would you like to play again? (y/n)"
  play_again = gets.chomp.downcase
  if play_again == "y"
    game = Game.new
    game.play
  end
end