# require './word'

class Game
  attr_writer :used_letters
  attr_writer :word
  attr_writer :hidden_word

  def initialize
    word = Word.new
    @word = word.generate.split('')
    @used_letters = []
    @counter = 0
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

  def letter(input)
    snapshot = @hidden_word

    if @used_letters.include?(input)
      "You've already tried that letter"
    else
      @word.each_with_index do |x, index|
        if input == x
          @hidden_word[index] = x
          @used_letters << x
        end
      end
      if snapshot != @hidden_word
        false
      else
        @hidden_word
      end
    end
  end

end

# test_game = Game.new
# test_game.hidden_word
# test_game.game_word
# print test_game.letter("a")



