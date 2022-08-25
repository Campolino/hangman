class Hangman
  attr_accessor :word

  def initializei
    @word = select_word.downcase
  end

  def select_word
    word = File.readlines("google-10000-english-no-swears.txt").sample
    if word.length <= 5 || word.length > 12
      select_word
    else
      word
    end
  end
end

hangman = Hangman.new
puts hangman.select_word
