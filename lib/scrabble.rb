require './lib/player'
require 'pry'

class Scrabble

  def initialize
    @player = Player.new
  end

  def score(word, letter_multiplier = [], word_multiplier = 1)
    scores = word.upcase.split("").map do |letter|
      point_values[letter]
    end
#     nested_scores = [scores] << letter_multiplier
    scores.sum * word_multiplier
  end

  # def calculate_score_of_array(word, multiplier)
  #   word.each

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
