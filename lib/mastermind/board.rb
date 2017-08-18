class Board
  def initialize
    $guess = Array.new
    $colors = [:red, :green, :yellow, :blue, :magenta, :cyan, :orange, :brown] 
    $colors_strings = $colors.map { |x| x.to_s }
    $code = $colors.sample(4)
    $code_strings = $code.map { |x| x.to_s }
  end
  
  # Draw blank initial game board on screen
  def draw_blank
    puts "[ o ] [ o ] [ o ] [ o ]\n\n"
  end
  
  # Draw winning gameboard on screen
  def draw
    $code.each { |color| print "[ #{Rainbow("o").background(color)} ] " }
    puts "\n\n"
  end
end