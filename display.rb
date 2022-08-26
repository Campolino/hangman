module Display
  def display_game(letters, lives, grid)
    puts "The word has #{letters} letters"
    puts "You have use #{lives} lives"
    puts grid.join('')
  end
end
