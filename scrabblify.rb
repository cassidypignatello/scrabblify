class Scrabblify
  attr_accessor :user_word

  # Set values for each letter in a constant
  LETTER_VALUES = {
    A: 1, B: 3, C: 3, D: 2, E: 1, F: 4, G: 2, H: 4, I: 1, J: 8, K: 5, L: 1, M: 3, 
    N: 1, O: 1, P: 3, Q: 10, R: 1, S: 1, T: 1, U: 1, V: 4, W: 4, X: 8, Y: 4, Z: 10 
  }

  # Initialize with user input for a word
  def initialize
    puts "Welcome to Scrabblify! Please enter a word:"
    ask_user_word
    if user_word.length < 2
      puts "Hmm, I don't think that really counts. Try again!"
      Scrabblify.new
    else
      score
    end
  end

  # Asks for user word and sanitizes input
  def ask_user_word
    @user_word = gets.strip.upcase
  end

  # Calculates the score by taking the user's word and comparing each char to its value
  # in the letter values hash, and incrementing the points variable according to that value
  def score
    points = 0
    @score = user_word.each_char do |c|
      points += LETTER_VALUES[c.to_sym]
    end
    puts "You'll score #{points} total points if you play #{user_word.downcase}."
  end
end

Scrabblify.new