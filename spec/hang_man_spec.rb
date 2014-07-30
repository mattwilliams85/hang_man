require 'rspec'
require 'game'
require 'word'

describe('game') do
  it('it initializes a new game with a random word') do
    test_game = Game.new()
    test_game.should be_an_instance_of Game
  end
  it('it initializes a new game with a random word') do
    test_game = Game.new()
    test_game.should be_an_instance_of Game
  end
end

