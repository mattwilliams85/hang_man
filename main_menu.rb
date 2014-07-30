require './lib/game'
require './lib/word'
require './lib/visual'

def main_menu
 system "clear"
 @blank = "\n"
  p "[======HANG-MAN======]"
  @blank
  setup
end

def setup
  loop do
    system "clear"
    p "Press 'n' to play a new game or 'x' to exit"
    user_input = gets.chomp
    if user_input == "n"

      new_game
    elsif user_input == "x"
      p "fuck you then"
      exit
    else
      p "not a valid entry, hit enter to continue"
      gets.chomp
    end
  end
end

def new_game
  @game = Game.new
  @blank
  @counter = 0
  @display = @game.hidden_word
  loop do
    system "clear"
    p "[======HANG-MAN======]"
    p "CATEGORY - " + @game.category[-1]
    print @game.score[@counter]
    @blank
    p @display
    if @counter == 5
      p "YOU LOSE"
      p "P.S. - The word was #{@game.game_word.join}"
      gets.chomp
      setup
    end
    p "Guess a letter by typing it in and hit 'enter'"
    letter_input = gets.chomp
    @result = @game.letter(letter_input)
    if @result == "used"
      p "You already tried that letter..."
      gets.chomp
    elsif @result == false
      @counter +=1
      p "WRONG - hit enter to continue"
      gets.chomp
    elsif @result == true
      p "YOU WIN!! - hit enter to continue"
      gets.chomp
      setup
    else
      p "CORRECT! - hit enter to continue"
      gets.chomp
    end
  end
end


main_menu

