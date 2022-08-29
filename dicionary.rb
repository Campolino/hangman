module Dicionary
  def open_file
    word = File.readlines("google-10000-english-no-swears.txt").sample
    word.length.between?(5,12) ? word : select_word
  end
end