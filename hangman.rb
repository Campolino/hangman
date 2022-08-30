require_relative 'display'
require_relative 'dicionary'

class Hangman
  include Display
  include Dicionary
  attr_reader :word, :grid, :letter

  def initialize
    @word = select_word.downcase
    @grid = grid_layout(word)
    @letter = get_letter
  end

  def select_word
    open_file()
  end

  def grid_layout(word)
    Array.new(word.length, '_')
  end

  def display_status
    display_game(@word, lives = 1, @grid)
  end

  def get_letter
    display_choice()
    set_grid(gets[0].downcase)
  end

  def set_grid(letter)
    word.index(letter).nil? ? false : @grid[word.index(letter)] = letter
    # Problem is when there's 2 equal letter, only one is considered
  end
end