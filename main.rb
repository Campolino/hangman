require_relative 'hangman'

class Main
  def play_game
    hangman = Hangman.new
    hangman.display_status
  end
end

Main.new.play_game()