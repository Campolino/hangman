require_relative 'display'
require_relative 'dicionary'

class Hangman
  include Display
  include Dicionary
  attr_reader :word, :grid

  def initialize
    @word = select_word.downcase
    @grid = grid_layout(word)
  end

  def select_word
    open_file()
  end

  def grid_layout(word)
    Array.new(word.length, '_')
  end

  def display_status
    display_game(word.length, lives = 1, grid)
  end
end

hangman = Hangman.new
hangman.display_status
