require_relative 'display'
require_relative 'dicionary'

class Hangman
  include Display
  include Dicionary
  attr_reader :word, :grid, :letter

  def initialize
    @word = select_word().downcase
    @grid = set_grid(word)
    @letter = get_letter
  end

  def select_word
    open_file()
  end

  def set_grid(word)
    Array.new(word.length - 1, '_')
  end

  def display_status
    display_game(@word, lives = 1, @grid)
  end

  def get_letter
    display_choice()
    search_matchers(gets[0].downcase)
  end

  def update_grid(indexes, letter)
    indexes.each { |index| @grid[index] = letter }
    @grid
  end

  def search_matchers(letter)
    indexes = (0 ... word.length).find_all { |i| word[i] == letter }
    update_grid(indexes, letter)
  end
end