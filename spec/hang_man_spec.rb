require 'rspec'
require 'game'
require 'word'
require 'visual'

describe('game') do
  used = ['f','l','n']
  word = ['b','m','w']
  hidden = ['_','_','_']

  it('initializes a new game with a random word') do
    test_game = Game.new
    expect(test_game).to be_an_instance_of(Game)
  end
  it('creates an empty array the same length as random word') do
    test_game = Game.new
    expect(test_game.game_word.length).to eq(test_game.hidden_word.length)
  end
  it('returns a string statement if player uses the same letter more than once') do
    test_game = Game.new
    test_game.used_letters = used
    test_game.word = word
    test_game.hidden_word = hidden
    expect(test_game.letter("f")).to eq("used")
  end
  it('pushes the correctly guessed letter into the hidden-word array') do
    test_game = Game.new
    test_game.used_letters = used
    test_game.word = word
    test_game.hidden_word = hidden
    expect(test_game.letter("m")).to eq(['_','m','_'])
  end
  it('returns false when guessing the wrong letter') do
    test_game = Game.new
    test_game.used_letters = used
    test_game.word = word
    test_game.hidden_word = hidden
    expect(test_game.letter("q")).to eq(false)
  end
  it('returns victory when player guesses all the letters') do
    test_game = Game.new
    test_game.used_letters = used
    test_game.word = word
    test_game.hidden_word = ['b','m','_']
    expect(test_game.letter("w")).to eq(true)
  end
end

