# require './word'

class Game
  attr_writer :used_letters
  attr_writer :word
  attr_writer :hidden_word

  def initialize
    word = Word.new
    visual = Visual.new
    @word = word.generate.split('')
    @used_letters = []
    @counter = 0
    @category = word.category
    @score = visual.drawman
  end

  def hidden_word
    @hidden_word = []
    @word.length.times do
    @hidden_word << "_"
    end
    @hidden_word
  end

  def game_word
    @word
  end

  def category
    @category = @category
  end

  def score
    @score = @score
  end

  def letter(input)
    @correct_guess = 0

    if @used_letters.include?(input)
      "used"
    else
      @word.each_with_index do |x, index|
        if input == x
          @hidden_word[index] = x
          @used_letters << x
          @correct_guess = 1
        end
      end
      if @correct_guess == 0
        @used_letters << input
        false
      else
        if !@hidden_word.include?("_")
          true
        else
        @hidden_word
        end
      end
    end
  end
end

# test_game = Game.new
# test_game.hidden_word
# test_game.game_word
# print test_game.letter("a")



