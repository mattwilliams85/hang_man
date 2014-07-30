require './word'

class Game
  def initialize
    word = Word.new
    @@word = word.generate
  end
end


