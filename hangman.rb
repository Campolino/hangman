require_relative 'display'

class Hangman
  include Display
  attr_reader :word, :grid

  def initialize
    @word = select_word.downcase
    @grid = grid_layout(word)
  end

  def select_word
    word = File.readlines("google-10000-english-no-swears.txt").sample
    if word.length <= 5 || word.length > 12
      select_word
    else
      word
    end
  end

  def grid_layout(word)
    Array.new(word.length - 1, '_')
  end

  def display_status
    display_game(word.length, 1, grid)
  end
end

hangman = Hangman.new
hangman.display_status
