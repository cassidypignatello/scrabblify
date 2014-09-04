class Scrabblify
  attr_accessor :user_word

  # Set values for each letter in a constant
  LETTER_VALUES = {
    A: 1, B: 3, C: 3, D: 2, E: 1, F: 4, G: 2, H: 4, I: 1, J: 8, K: 5, L: 1, M: 3, 
    N: 1, O: 1, P: 3, Q: 10, R: 1, S: 1, T: 1, U: 1, V: 4, W: 4, X: 8, Y: 4, Z: 10 
  }

  # Initialize with user input for a word
  def initialize
    puts "Please enter a word:"
    ask_user_word
    if user_word.length < 2
      puts "Hmm, I don't think that really counts. Try again!"
      Scrabblify.new
    else
      puts user_word
    end
  end

  def ask_user_word
    @user_word = gets.strip.upcase
  end
end

Scrabblify.new