class WordGame

  def initialize
    @word_letters = []
    @guess_count = 0
    @game_over = false
  end

  def enter(word)
    @word = word
  end

  def divide
    lets = @word.split('')
    lets.each do |search|
      @word_letters << search
    end
  end


  def search(letter)
    if @word_letters.include?(letter)
      puts "You got a letter"
    else
      puts "Sorry, guess again"
    end
    @guess_count += 1
    if @guess_count == @word_letters.count
      @game_over = true
    end
  end

end

# game class

# make a class for the game

#   define initialize method
#     - attribute for empty array
#     - attribute for guess count
#     - attribute for game over
#   end

#   define method that asks user1 for a word
#     - attribute for the word
#   end

#   define method that splits word into array
#     - split word into array
#       - iterate through array
#       - push into blank array
#     - have guess count equal to amount of characters in array
#     - display blank word to user2
#   end

#   define method that searches array by letter
#     - have guess count go up by one
#     - enter guess limit
#     - if user2 guesses a correct letter
#       - correct letter fills in the blank
#     - elsif user2 guesses incorrect letter
#       - blanks remain blank
#     - end
#   end

# end

puts "Hello, welcome to the Game of Words"
puts "When you play the Game of Words you win or you die!!!!!"
game = WordGame.new

puts "Player 1, please enter a word"
entry = gets.chomp
game.enter(entry)
game.divide

puts "Okay Player 2, guess which letters are in the word one by one!"
character = gets.chomp
game.search(character)

# driver code

# greet users
# make new instance

# ask user1 to enter a word (call on word method)
# user input for word

# ask user2 to guess the word
# user input for letters
# if user2 right
#   encouraging message
# else user2 wrong
#   taunting message
# end